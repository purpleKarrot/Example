# Copyright © 2018 Daniel Pfeifer <daniel@pfeifer-mail.de>
#
# This work is free.  You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar.  See http://www.wtfpl.net/ for more details.

set_directory_properties(PROPERTIES LABELS "Sanitizers")

find_package(Threads REQUIRED)

create_test_sourcelist(SOURCES
  main.c
  asan.c
  msan.c
  tsan.c
  )

add_executable(sanitizers ${SOURCES})

target_link_libraries(sanitizers PRIVATE Threads::Threads)

add_test(NAME Sanitize.Address COMMAND sanitizers asan)
add_test(NAME Sanitize.Memory  COMMAND sanitizers msan)
add_test(NAME Sanitize.Thread  COMMAND sanitizers tsan)
