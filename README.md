# cmake_conan_boilerplate_template

[![ci](https://github.com/james-choncholas/cmake_conan_boilerplate_template/actions/workflows/ci.yml/badge.svg)](https://github.com/james-choncholas/cmake_conan_boilerplate_template/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/james-choncholas/cmake_conan_boilerplate_template/branch/main/graph/badge.svg)](https://codecov.io/gh/james-choncholas/cmake_conan_boilerplate_template)
[![CodeQL](https://github.com/james-choncholas/cmake_conan_boilerplate_template/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/james-choncholas/cmake_conan_boilerplate_template/actions/workflows/codeql-analysis.yml)

# Setup
```
cd devcontainer
./build.sh
./run.sh
```

# Build
in the container...
builds as root, static linkage
```
cmake -S . -B ./build
cmake --build ./build
```

# Test
in the container...
```
cd ./build && ctest -C Debug && cd ..
```

# Run
```
./build/src/intro -m hi
```

# Clang Format
in the container...
```
cmake --build ./build --target clangformat
```
