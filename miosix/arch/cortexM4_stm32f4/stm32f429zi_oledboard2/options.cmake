# Select linker script and boot file.
# Their path must be relative to the miosix directory.
set(BOOT_FILE ${BOARD_PATH}/core/stage_1_boot.cpp)

# Select architecture specific files.
# These are the files in arch/<arch name>/<board name>.
set(ARCH_SRC
        ${ARCH_ALL_COMMON_PATH}/drivers/stm32_hardware_rng.cpp
        ${BOARD_PATH}/interfaces-impl/bsp.cpp)

# Add a #define to allow querying board name.
list(APPEND CFLAGS_BASE -D_BOARD_STM32F429ZI_OLEDBOARD2)
list(APPEND CXXFLAGS_BASE -D_BOARD_STM32F429ZI_OLEDBOARD2)

# Select programmer command line.
# This is the program that is invoked when the user types
# 'make program'.
# The command must provide a way to program the board, or print an
# error message saying that 'make program' is not supported for that
# board.

set(PROGRAM_CMDLINE "stm32flash -w main.bin -v /dev/ttyUSB1")
