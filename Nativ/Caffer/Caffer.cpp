#include "Caffer.h"

using std::vector;

void readBlockDuration(const unsigned char* caff, const uint64_t caffSize, uint64_t* readPosition, std::vector<uint64_t>& durations, std::vector<vector<unsigned char>>& bmps) {
	if (*readPosition + 1 > caffSize) { // TODO: overflow detection
		throw new std::exception(); // Last block invalid
	}
	const unsigned char blockType = caff[(*readPosition)++];
	if (blockType == 0x3) {
		const uint64_t blocklength = read8ByteIntLe(caff, caffSize, *readPosition);
		if (safe_add(safe_add(*readPosition, 8), blocklength) > caffSize) {
			throw new std::exception(); // Block overflows file
		}
		*readPosition += 8; // TODO: overflow detection
		if (blocklength < 8) {
			throw new std::exception(); // Block too short
		}
		const uint64_t duration = read8ByteIntLe(caff, caffSize, *readPosition);

		*readPosition = safe_add(8, *readPosition);
		const std::vector<unsigned char> bmp = ciffToBmp(&caff[*readPosition], blocklength - 8);
		durations.push_back(duration);
		bmps.push_back(bmp);
		*readPosition += blocklength - 8;
	}
	else if (blockType == 0x2) {
		// CAFF credits, skip
		const uint64_t blocklength = read8ByteIntLe(caff, caffSize, *readPosition);
		*readPosition = safe_add(*readPosition, safe_add(8, blocklength));
	}
	else {
		throw new std::exception(); // Invalid block type
	}
}

void processCaff(std::vector<unsigned char>& caff, std::string outputDir) {
	const uint64_t minFileSize = 29; // header ID (1) + header length (8) + header magic (4) + header_size (8) + num_anim (8)
	const uint64_t expectedHeaderSize = 20; //
	const uint64_t fileSize = caff.size();
	if (caff.size() < minFileSize) {
		throw new std::exception(); // CAFF too short
	}
	if (caff[0] != 0x01) {
		throw new std::exception(); // CAFF starts with invalid block
	}
	const uint64_t headerLength = read8ByteIntLe(caff, 1);
	if (headerLength != expectedHeaderSize) {
		throw new std::exception(); // Header block length invalid
	}
	if (!(caff[9] == 'C' && caff[10] == 'A' && caff[11] == 'F' && caff[12] == 'F')) {
		throw new std::exception(); // Invalid magic
	}
	const uint64_t headerSize = read8ByteIntLe(caff, 1 + 8 + 4);
	if (headerSize != expectedHeaderSize) {
		throw new std::exception(); // header_size invalid
	}
	const uint64_t numAnim = read8ByteIntLe(caff, 1 + 8 + 4 + 8);
	std::vector<uint64_t> durations;
	std::vector<vector<unsigned char>> bmps;
	if (numAnim != 0) {
		uint64_t readPosition = minFileSize;
		while (readPosition < fileSize) {
			readBlockDuration(&caff[0], caff.size(), &readPosition, durations, bmps);
		}
		if (readPosition != fileSize) {
			throw new std::exception(); // Last block size invalid
		}
		if (numAnim != durations.size()) {
			throw new std::exception(); // Count of real animation blocks doesn't match num_anim
		}
	}
	writeMetaFile(durations, outputDir + "meta.txt");
	for (uint64_t i = 0; i < bmps.size(); i++) {
		std::ostringstream fileName;
		fileName << outputDir << i << ".bmp";
		writeToFile(bmps[i], fileName.str());
		int a = 1;
		a++;
	}
}

extern int processor(char* caffIn, char* folderOut) {
	
	if (caffIn == NULL || folderOut == NULL)
		return 1;

	try {
		std::string caffStr(caffIn);
		std::string folderStr(folderOut);

		vector<unsigned char> caff = readFromFile(caffStr);
		processCaff(caff, folderStr);
		return 0;
	}
	catch (const std::exception&) {
		return 1;
	}
}


