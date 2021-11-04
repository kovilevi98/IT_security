#ifndef CIFFER_H
#define CIFFER_H

#include <vector>
#include <string>

uint64_t read8ByteIntLe(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start);
uint64_t read8ByteIntLe(const std::vector<unsigned char>& ciff, const uint64_t start);

std::string readCaption(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t headerSize);
std::string readCaption(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize);

std::vector<std::string> readTags(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t headerSize);
std::vector<std::string> readTags(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize);

void bmpAddNumberLe(std::vector<unsigned char>& bmp, const uint64_t number, const uint64_t bytes);

void bmpAddHeader(std::vector<unsigned char>& bmp, const uint64_t bmpSize);

void bmpAddDibHeader(std::vector<unsigned char>& bmp, const uint64_t width, const uint64_t height);

void bmpAddPixelArray(std::vector<unsigned char>& bmp, const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t width, const uint64_t height);

std::vector<unsigned char> ciffToBmp(const unsigned char* ciff, const uint64_t ciffSize);
std::vector<unsigned char> ciffToBmp(std::vector<unsigned char>& ciff);

#endif // ndef CIFFER_H