// Caffer.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <vector>
#include <fstream>
#include <string.h>
#include <ios>

using std::vector;
using std::cout;
using std::exception;
using std::string;

vector<unsigned char> readFile(const char* filename)
{
	// open the file:
	std::ifstream file(filename, std::ios::binary);

	// Stop eating new lines in binary mode!!!
	file.unsetf(std::ios::skipws);

	// get its size:
	std::streampos fileSize;

	file.seekg(0, std::ios::end);
	fileSize = file.tellg();
	file.seekg(0, std::ios::beg);

	if (fileSize > (32 << 10 << 10)) {
		throw new exception(); // File size exceeds 32 MB
	}

	// reserve capacity
	vector<unsigned char> vec;
	vec.reserve(fileSize);

	// read the data:
	vec.insert(vec.begin(),
		std::istream_iterator<unsigned char>(file),
		std::istream_iterator<unsigned char>());

	return vec;
}

uint64_t read8ByteIntBe(const vector<unsigned char>& ciff, const uint64_t start) {
	if (ciff.size() < start + 8) { // TODO: overflow detection
		throw new exception(); // Index out of bounds
	}
	uint64_t accumulator = 0;
	for (uint64_t i = start; i < start + 8; i++) { // TODO: overflow detection
		accumulator = (accumulator << 8) | (uint64_t)ciff[i];
	}
	return accumulator;
}

string readCaption(const vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize) {
	vector<unsigned char> chars;
	uint64_t i = start;
	while (i < headerSize && ciff[i] != '\n') {
		chars.push_back(ciff[i++]); // TODO: overflow detection
	}
	if (i == headerSize) {
		throw new exception(); // Caption missing \n terminator
	}
	string text(chars.begin(), chars.end());
	return text;
}

vector<string> readTags(const vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize) {
	vector<string> tags;
	uint64_t i = start;
	if (ciff[headerSize - 1] != '\0') { // TODO: undeflow detection
		throw new exception(); // Tags not properly terminated
	}
	vector<unsigned char> currentTag;
	while (i < headerSize) {
		if (ciff[i] == '\0') {
			string text(currentTag.begin(), currentTag.end());
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

void bmpAddNumberLe(vector<unsigned char>& bmp, const uint64_t number, const uint64_t bytes) {
	for (size_t i = 0; i < bytes; i++) { // TODO: overflow detection
		bmp.push_back((unsigned char)(number >> (i * 8)));
	}
}

void bmpAddHeader(vector<unsigned char>& bmp, const uint64_t bmpSize) {
	bmp.push_back(0x42); // B
	bmp.push_back(0x4d); // M
	bmpAddNumberLe(bmp, bmpSize, 4); // File size
	bmpAddNumberLe(bmp, 0, 2);
	bmpAddNumberLe(bmp, 0, 2);
	bmpAddNumberLe(bmp, 54, 4); // Pixel array offset
}

void bmpAddDibHeader(vector<unsigned char>& bmp, const uint64_t width, const uint64_t height) {
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

void bmpAddPixelArray(vector<unsigned char>& bmp, const vector<unsigned char>& ciff, const uint64_t start, const uint64_t width, const uint64_t height) {
	for (uint64_t i = 0; i < height; i++) {
		for (uint64_t j = 0; j < width; j++) {
			uint64_t offset = start + (i * width + j) * 3 ; // TODO: overflow detection
			bmp.push_back(ciff[offset + 2]); // TODO: overflow detection
			bmp.push_back(ciff[offset + 1]); // TODO: overflow detection
			bmp.push_back(ciff[offset + 0]); // TODO: overflow detection
		}
		uint64_t padding = 4 - (width * 3) % 4; // TODO: overflow detection
		for (uint64_t j = 0; j < padding; j++) { // TODO: overflow detection
			bmp.push_back(0x00);
		}
	}
}

void writeToFile(vector<unsigned char>& data, string filename) {
	std::ofstream outfile(filename, std::ios::out | std::ios::binary);
	outfile.write((const char *)&data[0], data.size());
}

vector<unsigned char> ciffToBmp(vector<unsigned char>& ciff) {
	const size_t minFileSize = 38; // magic (4) + header_size (8) + content_size(8) + width (8) + height (8) + caption (>1) + tags (>1)
	const size_t fileSize = ciff.size();
	if (fileSize < minFileSize) {
		throw new exception(); // File too short
	}
	if (!(ciff[0] == 'C' && ciff[1] == 'I' && ciff[2] == 'F' && ciff[3] == 'F')) {
		throw new exception(); // Invalid magic
	}
	uint64_t headerSize = read8ByteIntBe(ciff, 4);
	if (headerSize > fileSize) {
		throw new exception(); // Header size bigger than file size
	}
	uint64_t contentSize = read8ByteIntBe(ciff, 12);
	uint64_t width = read8ByteIntBe(ciff, 20);
	uint64_t height = read8ByteIntBe(ciff, 28);
	if (fileSize != headerSize + contentSize) { // TODO: overflow detection
		throw new exception(); // Total size mismatch
	}
	if (contentSize != (width * height * 3)) { // TODO: overflow detection
		throw new exception(); // Content size mismatch
	}
	string caption = readCaption(ciff, 36, headerSize);
	vector<string> tags = readTags(ciff, 36 + (uint64_t)caption.length() + 1, headerSize); // TODO: overflow detection

	vector<unsigned char> bmp;
	uint64_t bmpSize = 54 + ((width * 3 + 3) / 4) * 4 * height; // TODO: overflow detection
	bmpAddHeader(bmp, bmpSize);
	bmpAddDibHeader(bmp, width, height);
	bmpAddPixelArray(bmp, ciff, headerSize, width, height);

	return bmp;
}

int main()
{
	vector<unsigned char> ciff = readFile("c:\\Users\\Mark\\Desktop\\MSc\\számítógépes biztonság\\IT_security\\Nativ\\Caffer\\Debug\\test1.ciff");

	vector<unsigned char> bmp = ciffToBmp(ciff);

	writeToFile(bmp, "c:\\Users\\Mark\\Desktop\\MSc\\számítógépes biztonság\\IT_security\\Nativ\\Caffer\\Debug\\test1.bmp");
}
