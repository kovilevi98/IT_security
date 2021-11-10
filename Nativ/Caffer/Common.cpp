#include "Common.h"

uint64_t read8ByteIntLe(const std::vector<unsigned char>& data, const uint64_t start) {
	return read8ByteIntLe(&data[0], data.size(), start);
}
uint64_t read8ByteIntLe(const unsigned char* data, const uint64_t size, const uint64_t start) {
	if (size < safe_add(start, 8)) {
		throw new std::exception(); // Index out of bounds
	}
	uint64_t accumulator = 0;
	for (uint64_t i = 0; i < 8;) {
		accumulator = accumulator | (uint64_t)data[start + i] << (8 * i);
		i = safe_add(i, 1);
	}
	return accumulator;
}

uint64_t safe_add(uint64_t ui_a, uint64_t ui_b)
{
	if (UINT64_MAX - ui_a < ui_b) {
		throw new std::exception();
	}
	else {
		return ui_a + ui_b;
	}
}


uint64_t safe_mul(uint64_t ui_a, uint64_t ui_b)
{
	if (UINT64_MAX / ui_b < ui_a) {
		throw new std::exception();
	}
	return ui_a * ui_b;
}

uint64_t safe_sub(uint64_t ui_a, uint64_t ui_b)
{
	uint64_t usum = ui_a + ui_b;
	if (usum < ui_a) {
		throw new std::exception();
	}
	return usum;
}