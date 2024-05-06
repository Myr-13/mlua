cmake_minimum_required(VERSION 3.15)
project(luajit C)

file(GLOB_RECURSE LUAJIT_LIB_SRC "src/lj_*.c" "src/lib_*.c")
add_library(luajit_lib STATIC ${LUAJIT_LIB_SRC} ${CMAKE_SOURCE_DIR}/obj/lj_vm.obj)
target_include_directories(luajit_lib PRIVATE src include/lua)

add_executable(luajit "src/luajit.c")
target_link_libraries(luajit luajit_lib)
target_include_directories(luajit PRIVATE include/lua)
