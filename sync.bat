@echo off

rem --- Firefox ---
set "FF_PROFILE=%APPDATA%\Mozilla\Firefox\Profiles\2kdzx0vu.default-release-1755453145240"

copy "%FF_PROFILE%\user.js" "user.js.old"
copy "user.js" "%FF_PROFILE%\user.js"

rem --- Git ---
git add .
git commit -m "%date% %time%"
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
