#include "Caffer.h"

using std::vector;

void readBlockDuration(const unsigned char* caff, const uint64_t caffSize, uint64_t* readPosition, std::vector<uint64_t>& durations, std::vector<vector<unsigned char>>& bmps) {
	if (safe_add(*readPosition, 1) > caffSize) {
		throw "Last block invalid";
	}
	const unsigned char blockType = caff[(*readPosition)++];
	if (blockType == 0x3) {
		const uint64_t blocklength = read8ByteIntLe(caff, caffSize, *readPosition);
		if (safe_add(safe_add(*readPosition, 8), blocklength) > caffSize) {
			throw "Block overflows file";
		}
		*readPosition = safe_add(*readPosition, 8);
		if (blocklength < 8) {
			throw "Block too short";
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
		throw "Invalid block type";
	}
}

void processCaff(std::vector<unsigned char>& caff, std::string outputDir) {
	const uint64_t minFileSize = 29; // header ID (1) + header length (8) + header magic (4) + header_size (8) + num_anim (8)
	const uint64_t expectedHeaderSize = 20; //
	const uint64_t fileSize = caff.size();
	if (caff.size() < minFileSize) {
		throw "CAFF too short";
	}
	if (caff[0] != 0x01) {
		throw "CAFF starts with invalid block";
	}
	const uint64_t headerLength = read8ByteIntLe(caff, 1);
	if (headerLength != expectedHeaderSize) {
		throw "Header block length invalid";
	}
	if (!(caff[9] == 'C' && caff[10] == 'A' && caff[11] == 'F' && caff[12] == 'F')) {
		throw "Invalid magic";
	}
	const uint64_t headerSize = read8ByteIntLe(caff, 1 + 8 + 4);
	if (headerSize != expectedHeaderSize) {
		throw "header_size invalid";
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
			throw "Last block size invalid";
		}
		if (numAnim != durations.size()) {
			throw "Count of real animation blocks doesn't match num_anim";
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

int processor(const char* caffIn, const char* folderOut) {
	
	if (caffIn == NULL || folderOut == NULL)
		return 1;

	try {
		std::string caffStr(caffIn);
		std::string folderStr(folderOut);

		vector<unsigned char> caff = readFromFile(caffStr);
		processCaff(caff, folderStr);
		return 0;
	}
	catch (const char* msg) {
		printf("%s\n", msg);
		return 1;
	}
}


