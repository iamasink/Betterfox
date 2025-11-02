@echo off

rem --- Firefox ---
echo.
echo Updating user.js...
set "FF_PROFILE=%APPDATA%\Mozilla\Firefox\Profiles\2kdzx0vu.default-release-1755453145240"

copy /y "%FF_PROFILE%\user.js" "user.js.old"
copy /y "user.js" "%FF_PROFILE%\user.js"

echo.
echo Running git add...
git add .

echo.
echo Committing...
git commit -m "%date% %time%"

echo.
echo Fetching upstream...
git fetch upstream

echo.
echo Switching to main...
git checkout main

echo.
echo Merging upstream/main...
git merge upstream/main

echo.
echo Pushing to origin...
git push origin main

echo.
echo All done :3
echo.
timeout /t 10