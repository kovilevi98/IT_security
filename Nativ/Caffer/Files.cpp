#include "Files.h"

#include <fstream>

std::vector<unsigned char> readFromFile(const std::string filename) {
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
		throw new std::exception(); // File size exceeds 32 MB
	}

	// reserve capacity
	std::vector<unsigned char> vec;
	vec.reserve(fileSize);

	// read the data:
	vec.insert(vec.begin(),
		std::istream_iterator<unsigned char>(file),
		std::istream_iterator<unsigned char>());

	return vec;
}

void writeToFile(std::vector<unsigned char>& data, const std::string filename) {
	std::ofstream outfile(filename, std::ios::out | std::ios::binary);
	outfile.write((const char*)&data[0], data.size());
}

