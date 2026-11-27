# Cortex-M4 profile for Testable embedded analyzers (stack-usage, size, cross-compile).
# Flags are read from repository build files; host CMake builds are unchanged unless this file is included.
set(TESTABLE_EMBEDDED_CPU_FLAGS "-mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard")