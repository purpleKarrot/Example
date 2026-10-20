# Copyright © 2018 Daniel Pfeifer <daniel@pfeifer-mail.de>
#
# This work is free.  You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar.  See the COPYING file for more details.

set(CTEST_NIGHTLY_START_TIME "1:00:00 UTC")

string(JOIN "" CTEST_SUBMIT_URL "https://ci.chorse.dev/api/submit?project="
  "0f061fe4e6852250274ed3d786759168366c6a1cbdc1cc2dbb2d6a0e944cdb2b%3Aexample"
  )

set(CTEST_LABELS_FOR_SUBPROJECTS
  Sanitizers
  )
