#include "Common.h"

uint64_t read8ByteIntLe(const std::vector<unsigned char>& data, const uint64_t start) {
	return read8ByteIntLe(&data[0], data.size(), start);
}
uint64_t read8ByteIntLe(const unsigned char* data, const uint64_t size, const uint64_t start) {
	if (size < start + 8) { // TODO: overflow detection
		throw new std::exception(); // Index out of bounds
	}
	uint64_t accumulator = 0;
	for (uint64_t i = 0; i < 8; i++) { // TODO: overflow detection
		accumulator = accumulator | (uint64_t)data[start + i] << (8 * i);
	}
	return accumulator;
}
