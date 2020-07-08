:: Script to program app using stm32loader python app
ECHO OFF

:: Call parameter example
:: >> STM32BOOT.bat ../stm32loader.py COM3 G0 .\FM_SYNTH_APP_8000000.bin 0x8000000
set stm32boot_app=%~1
set stm32boot_port=%~2
set stm32boot_family=%~3
set stm32boot_app_bin=%~4
set stm32boot_app_addr=%~5

:: Show parameters to use
ECHO.
ECHO - STM32BOOT INPUTS:
ECHO.
ECHO APP:    %stm32boot_app%
ECHO PORT:   %stm32boot_port%
ECHO FAMILY: %stm32boot_family%
ECHO BIN:    %stm32boot_app_bin%:%stm32boot_app_addr%
ECHO.

:: Flash app
py %stm32boot_app% -p %stm32boot_port% -f %stm32boot_family% -w %stm32boot_app_bin% -a %stm32boot_app_addr% -V

:: See output
pause
