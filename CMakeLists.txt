cmake_minimum_required(VERSION 3.15)
project(luajit C)

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

file(GLOB_RECURSE LUAJIT_LIB_SRC "src/lj_*.c" "src/lib_*.c")
add_library(luajit_lib SHARED ${LUAJIT_LIB_SRC} ${CMAKE_CURRENT_SOURCE_DIR}/obj/lj_vm.obj)
target_include_directories(luajit_lib PRIVATE src include/lua)

add_executable(luajit "src/luajit.c")
target_link_libraries(luajit luajit_lib)
target_include_directories(luajit PRIVATE include/lua)