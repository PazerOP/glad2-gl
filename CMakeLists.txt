cmake_minimum_required(VERSION 3.17)

project(
	mh-glad2-gl
	VERSION 1.0
	DESCRIPTION "Output of https://github.com/dav1dde/glad-web"
	HOMEPAGE_URL "https://github.com/PazerOP/glad2-gl"
)

add_library(${PROJECT_NAME} STATIC
	"include/glad/gl.h"
	"include/KHR/khrplatform.h"
	"src/gl.c"
)

target_include_directories(${PROJECT_NAME} PUBLIC
	"$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>"
	"$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

find_package(mh-cmake-common CONFIG REQUIRED)
mh_basic_install(
	PROJ_INCLUDE_DIRS "include/"
)
