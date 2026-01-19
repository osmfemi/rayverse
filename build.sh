cd build
cmake .. && cd ..
cmake --build build
cp rayverse RAYMAN.app/Contents/MacOS/RAYMAN
codesign --deep --force --sign - RAYMAN.app