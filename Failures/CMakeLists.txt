# Copyright © 2018 Daniel Pfeifer <daniel@pfeifer-mail.de>
#
# This work is free.  You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar.  See http://www.wtfpl.net/ for more details.

add_executable(fpe fpe.c)
target_compile_options(fpe PRIVATE -Wall -Wextra)

add_test(NAME Failures.FPE COMMAND fpe)

add_test(NAME Failures.DIS COMMAND fpe)
set_property(TEST Failures.DIS PROPERTY DISABLED ON)
