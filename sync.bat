rem @echo off

rem --- Firefox ---
set "FF_PROFILE=%APPDATA%\Mozilla\Firefox\Profiles\2kdzx0vu.default-release-1755453145240"

copy /y "%FF_PROFILE%\user.js" "user.js.old"
copy /y "user.js" "%FF_PROFILE%\user.js"

rem --- Git ---
git add .
echo 
git commit -m "%date% %time%"
echo 
git fetch upstream
echo 
git checkout main
echo 
git merge upstream/main
echo 
git push origin main
echo 
