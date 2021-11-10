#include "Ciffer.h"

std::string readCaption(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize) {
	return readCaption(&ciff[0], ciff.size(), start, headerSize);
}
std::string readCaption(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t headerSize) {
	std::vector<unsigned char> chars;
	uint64_t i = start;
	while (i < headerSize && ciff[i] != '\n') {
		chars.push_back(ciff[i]); 
		i = safe_add(i, 1);
	}
	if (i == headerSize) {
		throw new std::exception(); // Caption missing \n terminator
	}
	std::string text(chars.begin(), chars.end());
	return text;
}

std::vector<std::string> readTags(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize) {
	return readTags(&ciff[0], ciff.size(), start, headerSize);
}
std::vector<std::string> readTags(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t headerSize) {
	std::vector<std::string> tags;
	uint64_t i = start;
	if (ciff[safe_sub(headerSize, 1)] != '\0') {
		throw new std::exception(); // Tags not properly terminated
	}
	std::vector<unsigned char> currentTag;
	while (i < headerSize) {
		if (ciff[i] == '\0') {
			std::string text(currentTag.begin(), currentTag.end());
			tags.push_back(text);
			currentTag.clear();
		}
		else {
			currentTag.push_back(ciff[i]);
		}
		i = safe_add(i, 1);
	}
	return tags;
}

void bmpAddNumberLe(std::vector<unsigned char>& bmp, const uint64_t number, const uint64_t bytes) {
	for (uint64_t i = 0; i < bytes;) {
		bmp.push_back((unsigned char)(number >> (i * 8)));
		i = safe_add(i, 1);
	}
}

void bmpAddHeader(std::vector<unsigned char>& bmp, const uint64_t bmpSize) {
	bmp.push_back(0x42); // B
	bmp.push_back(0x4d); // M
	bmpAddNumberLe(bmp, bmpSize, 4); // File size
	bmpAddNumberLe(bmp, 0, 2);
	bmpAddNumberLe(bmp, 0, 2);
	bmpAddNumberLe(bmp, 54, 4); // Pixel array offset
}

void bmpAddDibHeader(std::vector<unsigned char>& bmp, const uint64_t width, const uint64_t height) {
	bmpAddNumberLe(bmp, 40, 4); // DIB header length
	bmpAddNumberLe(bmp, width, 4); // Width
	bmpAddNumberLe(bmp, height, 4); // Height
	bmpAddNumberLe(bmp, 1, 2); // Number of planes
	bmpAddNumberLe(bmp, 24, 2); // Bits per pixel
	bmpAddNumberLe(bmp, 0, 4); // Compression mode
	bmpAddNumberLe(bmp, safe_mul(safe_mul(width, height), 4), 4); // Byte size of bitmap data with paddings 
	bmpAddNumberLe(bmp, 2835, 4); // Horizontal print resolution
	bmpAddNumberLe(bmp, 2835, 4); // Verticel print resolution
	bmpAddNumberLe(bmp, 0, 4); // Number of colors in color palette
	bmpAddNumberLe(bmp, 0, 4); // Important colors
}

void bmpAddPixelArray(std::vector<unsigned char>& bmp, const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t width, const uint64_t height) {
	for (uint64_t i = 0; i < height; i++) {
		uint64_t iMirrored = height - 1 - i; // BMP-s rows are stored from bottom to top
		for (uint64_t j = 0; j < width; j++) {
			uint64_t offset = safe_add(start, safe_mul((safe_add(safe_mul(iMirrored, width), j)), 3));
			bmp.push_back(ciff[safe_add(offset, 2)]);
			bmp.push_back(ciff[safe_add(offset, 1)]); 
			bmp.push_back(ciff[safe_add(offset, 0)]);
		}

		uint64_t padding = (safe_sub(4, (safe_mul(width, 3) % 4))) % 4; 
		for (uint64_t j = 0; j < padding;) 
		{
			bmp.push_back(0x00);
			j = safe_add(j, 1);
		}
	}
}

std::vector<unsigned char> ciffToBmp(std::vector<unsigned char>& ciff) {
	return ciffToBmp(&ciff[0], ciff.size());
}
std::vector<unsigned char> ciffToBmp(const unsigned char* ciff, const uint64_t ciffSize) {
	const uint64_t minFileSize = 38; // magic (4) + header_size (8) + content_size(8) + width (8) + height (8) + caption (>1) + tags (>1)
	const uint64_t fileSize = ciffSize;
	if (fileSize < minFileSize) {
		throw new std::exception(); // File too short
	}
	if (!(ciff[0] == 'C' && ciff[1] == 'I' && ciff[2] == 'F' && ciff[3] == 'F')) {
		throw new std::exception(); // Invalid magic
	}
	uint64_t headerSize = read8ByteIntLe(ciff, ciffSize, 4);
	if (headerSize > fileSize) {
		throw new std::exception(); // Header size bigger than file size
	}
	uint64_t contentSize = read8ByteIntLe(ciff, ciffSize, 4 + 8);
	uint64_t width = read8ByteIntLe(ciff, ciffSize, 4 + 8 + 8);
	uint64_t height = read8ByteIntLe(ciff, ciffSize, 4 + 8 + 8 + 8);
	if (fileSize != safe_add(headerSize, contentSize)) {
		throw new std::exception(); // Total size mismatch
	}
	if (contentSize != (safe_mul(width, safe_mul(height, 3)))) {
		throw new std::exception(); // Content size mismatch
	}

	/*
	// Uncomment this block if you want to retrieve/validate CIFF caption and tags
	std::string caption = readCaption(ciff, ciffSize, 36, headerSize);
	std::vector<std::string> tags = readTags(ciff, ciffSize, 36 + (uint64_t)caption.length() + 1, headerSize); // TODO: overflow detection
	*/

	std::vector<unsigned char> bmp;
	uint64_t bmpSize = 54 + safe_mul(((safe_add(safe_mul(width, 3), 3)) / 4), safe_mul(4, height));
	bmp.reserve(bmpSize);
	bmpAddHeader(bmp, bmpSize);
	bmpAddDibHeader(bmp, width, height);
	bmpAddPixelArray(bmp, ciff, ciffSize, headerSize, width, height);

	return bmp;
}
