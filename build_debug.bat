mkdir build\android-debug
cd build\android-debug
::set ABI=arm64-v8a
set ABI=armeabi-v7a
cmake -GNinja -DCMAKE_SYSTEM_NAME=Android -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DANDROID_LD=lld -DCMAKE_SYSTEM_VERSION=16 -DANDROID_PLATFORM=android-16 -DANDROID_ABI=%ABI% -DCMAKE_ANDROID_ARCH_ABI=%ABI% -DANDROID_NDK=C:\Users\Lom\AppData\Local\Android\Sdk\ndk\21.4.7075529 -DCMAKE_ANDROID_NDK=C:\Users\Lom\AppData\Local\Android\Sdk\ndk\21.4.7075529 -DCMAKE_TOOLCHAIN_FILE=C:\Users\Lom\AppData\Local\Android\Sdk\ndk\21.4.7075529\build\cmake\android.toolchain.cmake -DCMAKE_MAKE_PROGRAM=C:\Users\Lom\AppData\Local\Android\Sdk\cmake\3.10.2.4988404\bin\ninja.exe -DCMAKE_BUILD_TYPE=Debug -DANDROID_APP_PLATFORM=android-16 -DANDROID_STL=c++_static -DPNG_LIBRARIES="C:\src\jk2mv_android\libs\debug\install\lpng1639\lib\libpng.a" -DPNG_INCLUDE_DIRS="C:\src\jk2mv_android\libs\debug\install\lpng1639\include" -DZLIB_LIBRARIES="C:\src\jk2mv_android\libs\debug\install\zlib-1.2.13\lib\libz.a" -DZLIB_INCLUDE_DIRS="C:\src\jk2mv_android\libs\debug\install\zlib-1.2.13\include" -DSDL2_INCLUDE_DIR="C:\src\jk2mv_android\libs\debug\install\SDL2-2.26.5\include\SDL2" -DSDL2_LIBRARY="C:\src\jk2mv_android\libs\debug\install\SDL2-2.26.5\lib\libSDL2main.a;C:\src\jk2mv_android\libs\debug\install\SDL2-2.26.5\lib\libSDL2.so" -DOPENAL_INCLUDE_DIR="C:\src\jk2mv_android\libs\debug\install\openal-soft-1.23.1\include" -DOPENAL_LIBRARY="C:\src\jk2mv_android\libs\debug\install\openal-soft-1.23.1\lib\libopenal.so" -DOPENGL_INCLUDE_DIR="C:\src\jk2mv_android\libs\source\gl4es\include" -DOPENGL_LIBRARIES="C:\src\jk2mv_android\libs\source\gl4es\lib\libGL.so" -DBuildPortableVersion=OFF -DBuildMVMP=ON -DBuildMVDED=OFF -DBuildMVSDK=OFF -DLegacyHTTPDownloads=OFF -DNTClientWorkaround=OFF -DUseInternalPNG=OFF -DUseInternalJPEG=ON -DUseInternalZLIB=OFF -DUseInternalMiniZip=ON ..\..
cmake --build . --target jk2mvmp --config Debug
