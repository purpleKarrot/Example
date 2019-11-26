# Copyright © 2018 Daniel Pfeifer <daniel@pfeifer-mail.de>
#
# This work is free.  You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar.  See the COPYING file for more details.

cmake_minimum_required(VERSION 3.9)

set(CTEST_SOURCE_DIRECTORY "$ENV{GITHUB_WORKSPACE}")
set(CTEST_BINARY_DIRECTORY "$ENV{GITHUB_WORKSPACE}/build")

set(CTEST_SITE "github.com")
set(CTEST_BUILD_NAME "$ENV{TRAVIS_JOB_NUMBER}foo")
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

set(CTEST_COVERAGE_COMMAND "$ENV{COVERAGE_COMMAND}")
set(CTEST_MEMORYCHECK_COMMAND "$ENV{MEMORYCHECK_COMMAND}")
set(CTEST_MEMORYCHECK_TYPE "$ENV{MEMORYCHECK_TYPE}")

find_program(CTEST_GIT_COMMAND git)

ctest_start("Experimental")

ctest_update()
ctest_configure(OPTIONS -DCMAKE_BUILD_TYPE=Debug)
ctest_build()

if(CTEST_MEMORYCHECK_TYPE)
  ctest_memcheck()
else()
  ctest_test()
  if(CTEST_COVERAGE_COMMAND)
    ctest_coverage()
  endif()
endif()

ctest_submit()
