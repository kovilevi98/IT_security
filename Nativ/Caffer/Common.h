#ifndef COMMON_H
#define COMMON_H

#include <vector>

uint64_t read8ByteIntLe(const unsigned char* data, const uint64_t size, const uint64_t start);
uint64_t read8ByteIntLe(const std::vector<unsigned char>& data, const uint64_t start);
uint64_t safe_add(uint64_t ui_a, uint64_t ui_b);
uint64_t safe_mul(uint64_t ui_a, uint64_t ui_b);
uint64_t safe_sub(uint64_t ui_a, uint64_t ui_b);

#endif // !COMMON_H
