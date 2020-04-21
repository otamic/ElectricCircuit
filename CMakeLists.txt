cmake_minimum_required(VERSION 3.12)
project(electricCircuit)

set(CMAKE_CXX_STANDARD 14)

add_executable(electricCircuit main.cpp circuit.h circuit.cpp matrix.h matrix.cpp)