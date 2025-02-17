# stm32f103c8 has 64K, stm32f103cb has 128K
#set(LINKER_SCRIPT ${BOARD_PATH}/stm32_64k+20k_rom.ld)
set(LINKER_SCRIPT ${BOARD_PATH}/stm32_128k+20k_rom.ld)

## Select clock frequency
set(CLOCK_FREQ -DSYSCLK_FREQ_24MHz=24000000 -DRUN_WITH_HSI)
#set(CLOCK_FREQ -DSYSCLK_FREQ_24MHz=24000000)
#set(CLOCK_FREQ -DSYSCLK_FREQ_36MHz=36000000)
#set(CLOCK_FREQ -DSYSCLK_FREQ_48MHz=48000000)
#set(CLOCK_FREQ -DSYSCLK_FREQ_56MHz=56000000)
#set(CLOCK_FREQ -DSYSCLK_FREQ_72MHz=72000000)
