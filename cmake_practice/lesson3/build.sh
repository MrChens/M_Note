# !bash
BUILD_DIR="build.lesson3"
if [[ ! -e "$BUILD_DIR" ]]; then
	mkdir $BUILD_DIR
fi
cd "$BUILD_DIR"
cmake -DCMAKE_INSTALL_PREFIX=./output ..
make VERBOSE=1
make install
