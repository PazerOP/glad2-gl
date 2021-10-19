@ECHO OFF

SETLOCAL

	ECHO Preparing build directory...
	RMDIR /S /Q build
	MKDIR build
	CD build

	ECHO Configuring...
	cmake -DCMAKE_TOOLCHAIN_FILE="%VCPKG_CMAKE_TOOLCHAIN%" ../ || EXIT /b %ERRORLEVEL%

	ECHO Building...
	cmake --build . || EXIT /b %ERRORLEVEL%

	ECHO Build successful.

ENDLOCAL
