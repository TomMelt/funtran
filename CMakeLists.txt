cmake_minimum_required(VERSION 3.0)

project(scatter)

enable_language(Fortran)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_Fortran_MODULE_DIRECTORY "${CMAKE_BINARY_DIR}/mod")

#find_package(OpenMP REQUIRED)
#find_package(BLAS REQUIRED)
#find_package(LAPACK REQUIRED)

set(main_sources
    "src/main.f90"
)

add_executable(main ${main_sources})

add_library(precision STATIC "src/utils.f90")
target_link_libraries(main precision)

