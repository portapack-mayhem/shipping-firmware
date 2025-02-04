@echo off

echo *** Re-flash the HackRF with PortaPack firmware ***
echo.
echo Connect your HackRF One to a USB port on your computer.
echo.
echo If using a PortaPack, put the PortaPack in HackRF mode by selecting
echo the "HackRF" option from the main menu.
echo.
pause

echo.

REM Check if the firmware file exists
if not exist portapack-shipping.bin (
    echo The firmware file "portapack-shipping.bin" does not exist.
    echo Please ensure that you have downloaded the latest release from:
    echo https://github.com/portapack-mayhem/shipping-firmware/releases/
    echo.
    pause
    exit /b
)

"utils/hackrf_update.exe" portapack-shipping.bin
echo.
echo If your device never boot after flashing, please refer to https://github.com/portapack-mayhem/shipping-firmware/wiki/Won't-boot
echo.
pause
