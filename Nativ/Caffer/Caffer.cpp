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

uint8_t read8BytesInt(const vector<unsigned char>& in,const uint32_t start) {
	if (in.size() < start + 8) {
		throw new exception(); // Index out of bounds
	}
	uint8_t accumulator = 0;
	for (uint32_t i = start; i < start + 8; i++) {
		accumulator = (accumulator << 8) | (uint8_t)in[i];
	}
	return accumulator;
}

string readCaption(const vector<unsigned char>& in, const uint32_t start, const uint32_t headerSize) {
	vector<unsigned char> chars;
	uint32_t i = start;
	while (i < headerSize && in[i] != '\n') {
		chars.push_back(in[i++]);
	}
	if (i == headerSize) {
		throw new exception(); // Caption missing \n terminator
	}
	string text(chars.begin(), chars.end());
	return text;
}

vector<string> readTags(const vector<unsigned char>& in, const uint32_t start, const uint32_t headerSize) {
	vector<string> tags;
	uint32_t i = start;
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

int main()
{
	vector<unsigned char> ciff = readFile("c:\\Users\\Mark\\Desktop\\MSc\\számítógépes biztonság\\IT_security\\Nativ\\Caffer\\Debug\\test1.ciff");
	const int minFileSize = 38; // magic (4) + header_size (8) + content_size(8) + width (8) + height (8) + caption (>1) + tags (>1)
	const int fileSize = ciff.size();
	if (fileSize < minFileSize) {
		throw new exception(); // File too short
	}
	if (!(ciff[0] == 'C' && ciff[1] == 'I' && ciff[2] == 'F' && ciff[3] == 'F')) {
		throw new exception(); // Invalid magic
	}
	uint8_t headerSize = read8BytesInt(ciff, 4);
	if (headerSize > fileSize) {
		throw new exception(); // Header size bigger than file size
	}
	uint8_t contentSize = read8BytesInt(ciff, 12);
	uint8_t width = read8BytesInt(ciff, 20);
	uint8_t height = read8BytesInt(ciff, 28);
	if ((uint32_t)fileSize != (uint32_t)headerSize + (uint32_t)contentSize) { // Cast to something large enough to avoid overflows
		throw new exception(); // Total size mismatch
	}
	if ((uint32_t)contentSize != ((uint32_t)width * (uint32_t)height * (uint32_t)3)) { // Cast to something large enough to avoid overflows
		throw new exception(); // Content size mismatch
	}
	string caption = readCaption(ciff, 36, headerSize);
	vector<string> tags = readTags(ciff, 36 + caption.length() + 1, headerSize);

	printf("%d\n", fileSize);
	printf("%d\n", headerSize);
	printf("%d\n", contentSize);
	printf("%d\n", width);
	printf("%d\n", height);
	printf("%s\n", caption.c_str());
	printf("%d\n", tags.size());
	printf("%s\n", tags[0].c_str());
}
