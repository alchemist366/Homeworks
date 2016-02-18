cmake_minimum_required(VERSION 3.3)
project(NewPr)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main/main.cpp)
add_executable(NewPr ${SOURCE_FILES})