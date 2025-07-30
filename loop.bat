@echo off
setlocal enabledelayedexpansion

rem Set counter and max_time (30 days in minutes: 30 * 24 * 60)
set /a counter=0
set /a max_time=43200

:loop
echo HEN RDP ACTIVE!!
set /a counter+=1

rem Check if counter has reached max_time
if !counter! GEQ !max_time! (
    echo Time's up, shutting down this shit...
    exit /b
)

rem Wait 60 seconds (1 minute)
timeout /t 60 >nul

rem Loop back
goto :loop
