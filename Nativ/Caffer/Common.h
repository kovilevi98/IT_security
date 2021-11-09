#ifndef COMMON_H
#define COMMON_H

#include <vector>

uint64_t read8ByteIntLe(const unsigned char* data, const uint64_t size, const uint64_t start);
uint64_t read8ByteIntLe(const std::vector<unsigned char>& data, const uint64_t start);

#endif // !COMMON_H
