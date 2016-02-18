cmake_minimum_required(VERSION 3.3)
project(PRoject1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main.cpp IsPm.cpp StringDer/string.cpp)
add_executable(PRoject1 ${SOURCE_FILES})