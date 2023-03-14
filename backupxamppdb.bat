@echo off
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x
set fmonth=00%Month%
set fday=00%Day%
set mydate=%Year%-%fmonth:~-2%-%fday:~-2%

echo "Script starting... "%mydate%

set folderpath= C:\xampp-backup\db\%mydate%
if not exist %mydate%\ (
  mkdir %folderpath%
  echo "Folder created "%folderpath%
)else (
  echo "Folder found "%folderpath%
)
 

echo "Clone files..."
robocopy C:\xampp\mysql\data %folderpath% /e /z


echo "Delete older files..."

forfiles /p "C:\xampp-backup\db" /s /m *.* /c "cmd /c Del @path" /d -7 > nul 2> nul

echo "Done!"
#pause >nul