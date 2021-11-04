#include "Ciffer.h"

uint64_t read8ByteIntLe(const std::vector<unsigned char>& ciff, const uint64_t start) {
	return read8ByteIntLe(&ciff[0], ciff.size(), start);
}
uint64_t read8ByteIntLe(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start) {
	if (ciffSize < start + 8) { // TODO: overflow detection
		throw new std::exception(); // Index out of bounds
	}
	uint64_t accumulator = 0;
	for (uint64_t i = 0; i < 8; i++) { // TODO: overflow detection
		accumulator = accumulator | (uint64_t)ciff[start + i] << (8 * i);
	}
	return accumulator;
}

std::string readCaption(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize) {
	return readCaption(&ciff[0], ciff.size(), start, headerSize);
}
std::string readCaption(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t headerSize) {
	std::vector<unsigned char> chars;
	uint64_t i = start;
	while (i < headerSize && ciff[i] != '\n') {
		chars.push_back(ciff[i++]); // TODO: overflow detection
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
	if (ciff[headerSize - 1] != '\0') { // TODO: undeflow detection
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
		i++; // TODO: overflow detection
	}
	return tags;
}

void bmpAddNumberLe(std::vector<unsigned char>& bmp, const uint64_t number, const uint64_t bytes) {
	for (size_t i = 0; i < bytes; i++) { // TODO: overflow detection
		bmp.push_back((unsigned char)(number >> (i * 8)));
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
	bmpAddNumberLe(bmp, width * height * 4, 4); // Byte size of bitmap data with paddings // TODO: overflow detection
	bmpAddNumberLe(bmp, 2835, 4); // Horizontal print resolution
	bmpAddNumberLe(bmp, 2835, 4); // Verticel print resolution
	bmpAddNumberLe(bmp, 0, 4); // Number of colors in color palette
	bmpAddNumberLe(bmp, 0, 4); // Important colors
}

void bmpAddPixelArray(std::vector<unsigned char>& bmp, const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t width, const uint64_t height) {
	for (uint64_t i = 0; i < height; i++) {
		uint64_t iMirrored = height - 1 - i; // BMP-s rows are stored from bottom to top
		for (uint64_t j = 0; j < width; j++) {
			uint64_t offset = start + (iMirrored * width + j) * 3; // TODO: overflow detection
			bmp.push_back(ciff[offset + 2]); // TODO: overflow detection
			bmp.push_back(ciff[offset + 1]); // TODO: overflow detection
			bmp.push_back(ciff[offset + 0]); // TODO: overflow detection
		}

		uint64_t padding = (4 - (width * 3) % 4) % 4; // TODO: overflow detection
		for (uint64_t j = 0; j < padding; j++) { // TODO: overflow detection
			bmp.push_back(0x00);
		}
	}
}

std::vector<unsigned char> ciffToBmp(std::vector<unsigned char>& ciff) {
	return ciffToBmp(&ciff[0], ciff.size());
}
std::vector<unsigned char> ciffToBmp(const unsigned char* ciff, const uint64_t ciffSize) {
	const size_t minFileSize = 38; // magic (4) + header_size (8) + content_size(8) + width (8) + height (8) + caption (>1) + tags (>1)
	const size_t fileSize = ciffSize;
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
	uint64_t contentSize = read8ByteIntLe(ciff, ciffSize, 12);
	uint64_t width = read8ByteIntLe(ciff, ciffSize, 20);
	uint64_t height = read8ByteIntLe(ciff, ciffSize, 28);
	if (fileSize != headerSize + contentSize) { // TODO: overflow detection
		throw new std::exception(); // Total size mismatch
	}
	if (contentSize != (width * height * 3)) { // TODO: overflow detection
		throw new std::exception(); // Content size mismatch
	}
	std::string caption = readCaption(ciff, ciffSize, 36, headerSize);
	std::vector<std::string> tags = readTags(ciff, ciffSize, 36 + (uint64_t)caption.length() + 1, headerSize); // TODO: overflow detection

	std::vector<unsigned char> bmp;
	uint64_t bmpSize = 54 + ((width * 3 + 3) / 4) * 4 * height; // TODO: overflow detection
	bmp.reserve(bmpSize);
	bmpAddHeader(bmp, bmpSize);
	bmpAddDibHeader(bmp, width, height);
	bmpAddPixelArray(bmp, ciff, ciffSize, headerSize, width, height);

	return bmp;
}
