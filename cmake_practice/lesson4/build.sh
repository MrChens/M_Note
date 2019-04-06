BUILD_DIR="build.lesson4"
if [[ ! -e "$BUILD_DIR" ]]; then
	mkdir $BUILD_DIR
fi
cd "$BUILD_DIR"
# cmake -DCMAKE_INSTALL_PREFIX=./output ..
# 这行是配合FIND_PATH使用的
cmake -DCMAKE_INSTALL_PREFIX=./output -DCMAKE_INCLUDE_PATH=/Users/mrchens/Documents/temp/cmake/lesson3/build.lesson3/output/include/hello ..

make VERBOSE=1
make install
