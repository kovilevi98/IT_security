#ifndef CAFFER_H
#define CAFFER_H

#include "Files.h"
#include "Ciffer.h"
#include "Common.h"
#include <vector>
#include <sstream>

extern "C" 
{
	__declspec(dllexport) int __stdcall processor(char* caffIn, char* folderOut);
}

#endif // ndef CAFFER_H
