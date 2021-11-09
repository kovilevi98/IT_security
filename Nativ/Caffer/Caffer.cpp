#include "Caffer.h"

using std::vector;

void readBlockDuration(const unsigned char* caff, const uint64_t caffSize, uint64_t* readPosition, const std::vector<uint64_t>& durations, const std::vector<vector<unsigned char>>& bmps) {
	if (*readPosition + 1 > caffSize) {
		throw new std::exception(); // Last block invalid
	}
	const unsigned char blockType = caff[(*readPosition)++];
	if (blockType == 0x3) {
		const uint64_t blocklength = read8ByteIntLe(caff, caffSize, *readPosition);
		if (*readPosition + 8 + blocklength > caffSize) { // TODO: overflow detection
			throw new std::exception(); // Block overflows file
		}
		*readPosition += 8;
		if (blocklength < 1 + 8 + 8) {
			throw new std::exception(); // Block too short
		}
		const uint64_t duration = read8ByteIntLe(caff, caffSize, *readPosition);
		*readPosition += 8;
		const std::vector<unsigned char>
	}
	else if (blockType == 0x2) {
		// CAFF credits, skip
		const uint64_t blocklength = read8ByteIntLe(caff, caffSize, *readPosition);
		*readPosition += 8 + blocklength; // TODO: overflow detection
	}
	else {
		throw new std::exception(); // Invalid block type
	}
}

std::vector<std::vector<unsigned char>> processCaff(std::vector<unsigned char>& caff, std::string outputDir) {
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
	const std::vector<uint64_t> durations;
	const std::vector<vector<unsigned char>> bmps;
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
	}
}

int main() {
	try {
		vector<unsigned char> caff = readFromFile("c:\\Users\\Mark\\Desktop\\MSc\\számítógépes biztonság\\IT_security\\Nativ\\Caffer\\Debug\\1.caff");
		processCaff(caff, "c:\\Users\\Mark\\Desktop\\MSc\\számítógépes biztonság\\IT_security\\Nativ\\Caffer\\Debug\\");
		return 0;
	}
	catch (const std::exception&) {
		return 1;
	}
}
