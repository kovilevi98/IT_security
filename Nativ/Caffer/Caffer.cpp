// Caffer.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <vector>
#include <fstream>
#include <string.h>

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

uint64_t read8BytesIntBe(const vector<unsigned char>& in,const uint64_t start) {
	if (in.size() < start + 8) {
		throw new exception(); // Index out of bounds
	}
	uint64_t accumulator = 0;
	for (uint64_t i = start; i < start + 8; i++) {
		accumulator = (accumulator << 8) | (uint64_t)in[i];
	}
	return accumulator;
}

string readCaption(const vector<unsigned char>& in, const uint64_t start, const uint64_t headerSize) {
	vector<unsigned char> chars;
	uint64_t i = start;
	while (i < headerSize && in[i] != '\n') {
		chars.push_back(in[i++]);
	}
	if (i == headerSize) {
		throw new exception(); // Caption missing \n terminator
	}
	string text(chars.begin(), chars.end());
	return text;
}

vector<string> readTags(const vector<unsigned char>& in, const uint64_t start, const uint64_t headerSize) {
	vector<string> tags;
	uint64_t i = start;
	if (in[headerSize - 1] != '\0') {
		throw new exception(); // Tags not properly terminated
	}
	vector<unsigned char> currentTag;
	while (i < headerSize) {
		if (in[i] == '\0') {
			string text(currentTag.begin(), currentTag.end());
			tags.push_back(text);
			currentTag.clear();
		}
		else {
			currentTag.push_back(in[i]);
		}
		i++;
	}
	return tags;
}

void bmpAddHeader(vector<unsigned char>& bmp, const uint64_t bmpSize) {
	bmp.push_back(0x42);
	bmp.push_back(0x4d);
	bmp.push_back((unsigned char)(bmpSize >> 0));
	bmp.push_back((unsigned char)(bmpSize >> 1));
	bmp.push_back((unsigned char)(bmpSize >> 2));
	bmp.push_back((unsigned char)(bmpSize >> 3));
	bmp.push_back(0x00);
	bmp.push_back(0x00);
	bmp.push_back(0x00);
	bmp.push_back(0x00);
	bmp.push_back(0x36);
	bmp.push_back(0x00);
	bmp.push_back(0x00);
	bmp.push_back(0x00);
}

void bmpAddDibHeader(vector<unsigned char>& bmp, const uint64_t width, const uint64_t height) {
	bmp.push_back(0x28);
	bmp.push_back(0x00);
	bmp.push_back(0x00);
	bmp.push_back(0x00);
}

int main()
{
	vector<unsigned char> ciff = readFile("c:\\Users\\Mark\\Desktop\\MSc\\számítógépes biztonság\\IT_security\\Nativ\\Caffer\\Debug\\test1.ciff");
	const size_t minFileSize = 38; // magic (4) + header_size (8) + content_size(8) + width (8) + height (8) + caption (>1) + tags (>1)
	const size_t fileSize = ciff.size();
	if (fileSize < minFileSize) {
		throw new exception(); // File too short
	}
	if (!(ciff[0] == 'C' && ciff[1] == 'I' && ciff[2] == 'F' && ciff[3] == 'F')) {
		throw new exception(); // Invalid magic
	}
	uint64_t headerSize = read8BytesIntBe(ciff, 4);
	if (headerSize > fileSize) {
		throw new exception(); // Header size bigger than file size
	}
	uint64_t contentSize = read8BytesIntBe(ciff, 12);
	uint64_t width = read8BytesIntBe(ciff, 20);
	uint64_t height = read8BytesIntBe(ciff, 28);
	if (fileSize != headerSize + contentSize) { // TODO: overflow detection
		throw new exception(); // Total size mismatch
	}
	if (contentSize != (width * height * 3)) { // TODO: overflow detection
		throw new exception(); // Content size mismatch
	}
	string caption = readCaption(ciff, 36, headerSize);
	vector<string> tags = readTags(ciff, 36 + (uint64_t)caption.length() + 1, headerSize);

	printf("%d\n", fileSize);
	printf("%ld\n", (unsigned long)headerSize);
	printf("%ld\n", (unsigned long)contentSize);
	printf("%ld\n", (unsigned long)width);
	printf("%ld\n", (unsigned long)height);
	printf("%s\n", caption.c_str());
	printf("%d\n", tags.size());
	for (int i = 0; i < tags.size(); i++) {
		printf("%s\n", tags[i].c_str());
	}
}
