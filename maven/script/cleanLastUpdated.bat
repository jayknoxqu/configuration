@echo off

set REPOSITORY_PATH=%1

if "%REPOSITORY_PATH%" == "" (
    echo "Usage: %0 <maven_repository_path>"
    echo "Example: %0 ~/.m2/repository"
    echo "Explain: "~" is your profile's home directory" 
    echo. 
    echo. 
    echo "press enter to quit!" & pause > nul 
    goto :eof
)

echo. 
echo "Began clean lastUpdated file"
echo. 

for /f "delims=" %%i in ('dir /b /s "%REPOSITORY_PATH%\*lastUpdated*"') do (
   del /s /q %%i
)

echo. 
echo "End clean lastUpdated file."
echo. 
echo. 
echo "press enter to exit!" & pause > nul 

exit