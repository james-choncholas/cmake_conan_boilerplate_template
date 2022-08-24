#include <stddef.h>
#include <stdint.h>
// fuzz_target.cc
extern "C" int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    return 0;
}
