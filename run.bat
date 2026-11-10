@echo off
set "PATH=C:\Users\ASUS\AppData\Local\Programs\nodejs;%PATH%"
echo ========================================================
echo Starting RESILINK Coastal Odisha Rescue Dashboard...
echo URL: http://localhost:3000
echo ========================================================
start "" "http://localhost:3000"
npm run dev
pause
