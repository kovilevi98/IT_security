#ifndef CIFFER_H
#define CIFFER_H

#include "Common.h"
#include <vector>
#include <string>

std::string readCaption(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t headerSize);
std::string readCaption(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize);

std::vector<std::string> readTags(const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t headerSize);
std::vector<std::string> readTags(const std::vector<unsigned char>& ciff, const uint64_t start, const uint64_t headerSize);

void bmpAddNumberLe(std::vector<unsigned char>& bmp, const uint64_t number, const uint64_t bytes);

void bmpAddHeader(std::vector<unsigned char>& bmp, const uint64_t bmpSize);

void bmpAddDibHeader(std::vector<unsigned char>& bmp, const uint64_t width, const uint64_t height);

void bmpAddPixelArray(std::vector<unsigned char>& bmp, const unsigned char* ciff, const uint64_t ciffSize, const uint64_t start, const uint64_t width, const uint64_t height);

/// <summary>Converts a CIFF byte vector to a BMP byte vector. Throws exception on any parsing error.</summary>
/// <param name="ciff">CIFF format byte vector</param>
/// <returns>BMP format byte vector</returns>
std::vector<unsigned char> ciffToBmp(const unsigned char* ciff, const uint64_t ciffSize);
/// <summary>Converts a CIFF byte array to a BMP byte vector. Throws exception on any parsing error.</summary>
/// <param name="ciff">CIFF format byte array start pointer</param>
/// <param name="ciffSize">CIFF format byte array length</param>
/// <returns>BMP format byte vector</returns>
std::vector<unsigned char> ciffToBmp(std::vector<unsigned char>& ciff);

#endif // ndef CIFFER_H