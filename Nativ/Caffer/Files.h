#ifndef FILES_H
#define FILES_H

#include <vector>
#include <string>

std::vector<unsigned char> readFromFile(const std::string filename);

void writeToFile(std::vector<unsigned char>& data, const std::string filename);

#endif // !FILES_H
