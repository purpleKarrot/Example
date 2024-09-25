# Copyright © 2018 Daniel Pfeifer <daniel@pfeifer-mail.de>
#
# This work is free.  You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar.  See the COPYING file for more details.

cmake_minimum_required(VERSION 3.0)

project(Example
  VERSION 0.1.0
  DESCRIPTION "Examples of bad code, failing tests, and low coverage."
  HOMEPAGE_URL "https://purplekarrot.net/Example"
  LANGUAGES C
  )

include(CTest)

add_subdirectory(Failures)
add_subdirectory(Measurements)
add_subdirectory(Sanitizers)
