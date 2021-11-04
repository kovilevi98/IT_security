#ifndef CIFFER_H
#define CIFFER_H

#include <vector>
#include <string>

uint64_t read8ByteIntBe(const std::vector<unsigned char>& ciff, const uint64_t start);

std::string readCaption(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize);

std::vector<std::string> readTags(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize);

void bmpAddNumberLe(std::vector<unsigned char>& bmp, const uint64_t number, const uint64_t bytes);

void bmpAddHeader(std::vector<unsigned char>& bmp, const uint64_t bmpSize);

void bmpAddDibHeader(std::vector<unsigned char>& bmp, const uint64_t width, const uint64_t height);

void bmpAddPixelArray(std::vector<unsigned char>& bmp, const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t width, const uint64_t height);

std::vector<unsigned char> ciffToBmp(std::vector<unsigned char>& ciff);

#endif // ndef CIFFER_H