cmake_minimum_required(VERSION 3.18)

project(magic_m1_sdk LANGUAGES C CXX)

# Assuming the SDK is installed in the directory: /opt/magic_robotics/magic_m1_sdk

set(CMAKE_PREFIX_PATH /opt/magic_robotics/magic_m1_sdk)

find_package(magic_m1_sdk REQUIRED)

add_executable(cmake_example cmake_example.cpp)

target_link_libraries(cmake_example PRIVATE magic::m1_sdk)
