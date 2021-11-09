#ifndef CAFFER_H
#define CAFFER_H

#ifdef CAFF_EXPORTS
#define CAFF_API __declspec(dllexport)
#else
#define CAFF_API __declspec(dllimport)
#endif

#include "Files.h"
#include "Ciffer.h"
#include "Common.h"
#include <vector>
#include <sstream>

extern "C" CAFF_API int processor(std::string caffIn, std::string folderOut);

#endif // ndef CAFFER_H
