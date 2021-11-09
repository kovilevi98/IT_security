#ifndef CAFFER_H
#define CAFFER_H

#include "Files.h"
#include "Ciffer.h"
#include "Common.h"
#include <vector>
#include <sstream>

extern "C" 
{
	__declspec(dllexport) int __stdcall processor(std::string caffIn, std::string folderOut);
}

#endif // ndef CAFFER_H
