#ifndef CAFFER_H
#define CAFFER_H

#include "Files.h"
#include "Ciffer.h"
#include "Common.h"
#include <vector>
#include <sstream>

void readBlockDuration(const unsigned char* caff, const uint64_t caffSize, uint64_t* readPosition, std::vector<uint64_t>& durations, std::vector<std::vector<unsigned char>>& bmps);

/// <summary>Converts a CAFF byte vector to a BMP files. Throws exception on any parsing error.
/// Puts the bmp files into outputDir, named 1.bmp, 2.bmp, ..., n.bmp
/// Puts meta.txt into outputDir. Meta.txt first line contains n.
/// The following n lines contain the drame durations in ms.</summary>
/// <param name="caff">CAFF format byte vector</param>
/// <param name="outputDir">Directory name for output files with traling backslash</param>
void processCaff(std::vector<unsigned char>& caff, std::string outputDir);

#endif // ndef CAFFER_H
