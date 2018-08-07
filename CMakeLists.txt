cmake_minimum_required(VERSION 3.0)
project(Database)

SET(CMAKE_CXX_COMPILER clang++)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_STANDARD 14)

set(SOURCES
    Database.hpp
    Database.cpp
    Person.hpp
    Person.cpp
    Employee.hpp
    Employee.cpp
    Student.hpp
    Student.cpp
    PeselValidation.hpp
    PeselValidation.cpp
    main.cpp
)

add_executable(Database ${SOURCES})
add_compile_options(Database -Wall -Wextra -Wpedantic)
