# Copyright © 2024 Daniel Pfeifer <daniel@pfeifer-mail.de>
#
# This work is free.  You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar.  See http://www.wtfpl.net/ for more details.

set(IMAGE_DIR "${CMAKE_CURRENT_SOURCE_DIR}")

add_test(NAME numeric_measurement
  COMMAND ${CMAKE_COMMAND} -E echo [[
    test output
    <CTestMeasurement type="numeric/double" name="MyCustomValue">1.4847</CTestMeasurement>
    more output
    ]]
  )

add_test(NAME image_measurement
  COMMAND ${CMAKE_COMMAND} -E echo [[
    test output
    <CTestMeasurementFile name="TestImage" type="image/png">]] "${IMAGE_DIR}/TestImage.png" [[</CTestMeasurementFile>
    <CTestMeasurementFile name="ValidImage" type="image/png">]] "${IMAGE_DIR}/ValidImage.png" [[</CTestMeasurementFile>
    <CTestMeasurementFile name="DifferenceImage" type="image/png">]] "${IMAGE_DIR}/DifferenceImage.png" [[</CTestMeasurementFile>
    more output
    ]]
  )

add_test(NAME file_measurement
  COMMAND ${CMAKE_COMMAND} -E echo [[
    test output
    <CTestMeasurementFile name="CurrentListFile" type="file">]] "${CMAKE_CURRENT_LIST_FILE}" [[</CTestMeasurementFile>
    more output
    ]]
  )
set_property(TEST file_measurement PROPERTY ATTACHED_FILES "${IMAGE_DIR}/ValidImage.png")

add_test(NAME custom_details
  COMMAND ${CMAKE_COMMAND} -E echo [[
    test output
    <CTestDetails>CustomDetails</CTestDetails>
    more output
    ]]
  )
