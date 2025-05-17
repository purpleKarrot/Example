# Copyright © 2018 Daniel Pfeifer <daniel@pfeifer-mail.de>
#
# This work is free.  You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar.  See the COPYING file for more details.

set(CTEST_NIGHTLY_START_TIME "1:00:00 UTC")

set(CTEST_SUBMIT_URL "https://chorse.dev/api/submit?project=Example")

set(CTEST_LABELS_FOR_SUBPROJECTS
  Sanitizers
  )
