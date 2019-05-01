# !bash
BUILD_DIR="build.lesson3"
if [[ ! -e "$BUILD_DIR" ]]; then
	mkdir -p $BUILD_DIR
fi
cd "$BUILD_DIR"
cmake -DCMAKE_INSTALL_PREFIX=./output ..
if [[ $1 == "verbose" ]]; then
	echo -e "make with verbose"
	make VERBOSE=1
else
	echo -e "make without arg"
	make
fi
make install
