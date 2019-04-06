# !bash
BUILD_DIR="build.lesson1"
if [[ ! -e "$BUILD_DIR" ]]; then
	mkdir $BUILD_DIR
fi
cd "$BUILD_DIR"
cmake ..
make VERBOSE=1
