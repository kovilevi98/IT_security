#include "Caffer.h"

#include <stdio.h>

int main(int argc, char** argv) {
	if (argc < 3) {
		return 1;
	}
	const char* caffIn = argv[1];
	const char* folderOut = argv[2];
	return processor(caffIn, folderOut);
}