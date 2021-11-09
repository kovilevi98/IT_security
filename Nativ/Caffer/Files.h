#ifndef FILES_H
#define FILES_H

#include <vector>
#include <string>
#include <fstream>

std::vector<unsigned char> readFromFile(const std::string filename);

void writeToFile(const unsigned char* data, const uint64_t length, const std::string filename);
void writeToFile(const std::vector<unsigned char>& data, const std::string filename);

void writeMetaFile(const std::vector<uint64_t>& durations, const std::string filename);

#endif // !FILES_H
