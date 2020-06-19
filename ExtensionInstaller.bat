@echo off
echo Welcome to this Auto-Installer of the Omega Extension for Chromium based web browser (BETA Feature)
echo For now only Google Chrome, Chromium and Microsoft Edge (Chromium based) are supported.
echo If the Installation didn't work, please execute the script as administrator
echo I'll download extension for you.
echo Note : The download fonction is avalaible if you have wget installed
echo REPOS : https://github.com/hectornuss/Omega-Numworks-Chrome-Extentsion
pause
mkdir img
cd img
wget https://github.com/hectornuss/Omega-Numworks-Chrome-Extentsion/raw/master/img/Omega-Logo.png
cd ..
wget https://raw.githubusercontent.com/hectornuss/Omega-Numworks-Chrome-Extentsion/master/manifest.json
wget https://raw.githubusercontent.com/hectornuss/Omega-Numworks-Chrome-Extentsion/master/popup.html
wget https://raw.githubusercontent.com/hectornuss/Omega-Numworks-Chrome-Extentsion/master/style.css
pause
if exist %userprofile%\AppData\Local\Chrome  (
     echo Chrome detected, Installing Omega Extension to Chrome
     mkdir %userprofile%\AppData\Local\Chrome\Application\Omega
     mkdir %userprofile%\AppData\Local\Chrome\Application\Omega\img
     copy img\Omega-Logo.png %userprofile%\AppData\Local\Chrome\Application\Omega\img\Omega-Logo.png
     copy manifest.json %userprofile%\AppData\Local\Chrome\Application\Omega\manifest.json
     copy popup.html %userprofile%\AppData\Local\Chrome\Application\Omega\popup.html
     copy style.css %userprofile%\AppData\Local\Chrome\Application\Omega\style.css
     %userprofile%\AppData\Local\Chrome\Application\chrome.exe --user-data-dir=%temp% --load-extension=%userprofile%\AppData\Local\Chrome\Application\Omega
     echo Sucessfully Installed the extension to Google Chrome
)
if exist %ProgramFiles(x86)%\Google\Chrome  (
     echo Chrome detected, Installing Omega Extension to Chrome
     mkdir %ProgramFiles(x86)%\Google\Chrome\Application\Omega
     mkdir %ProgramFiles(x86)%\Google\Chrome\Application\Omega\img
     copy img\Omega-Logo.png %ProgramFiles(x86)%\Google\Chrome\Application\Omega\img\Omega-Logo.png
     copy manifest.json %ProgramFiles(x86)%\Google\Chrome\Application\Omega\manifest.json
     copy popup.html %ProgramFiles(x86)%\Google\Chrome\Application\Omega\popup.html
     copy style.css %ProgramFiles(x86)%\Google\Chrome\Application\Omega\style.css
     %ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe --user-data-dir=%temp% --load-extension=%ProgramFiles(x86)%\Google\Chrome\Application\Omega
     echo Sucessfully Installed the extension to Google Chrome
)
if exist %userprofile%\AppData\Local\Chromium  (
     echo Chromium detected, Installing Omega Extension to Chromium
     mkdir %userprofile%\AppData\Local\Chromium\Application\Omega
     mkdir %userprofile%\AppData\Local\Chromium\Application\Omega\img
     copy img\Omega-Logo.png %userprofile%\AppData\Local\Chromium\Application\Omega\img\Omega-Logo.png
     copy manifest.json %userprofile%\AppData\Local\Chromium\Application\Omega\manifest.json
     copy popup.html %userprofile%\AppData\Local\Chromium\Application\Omega\popup.html
     copy style.css %userprofile%\AppData\Local\Chromium\Application\Omega\style.css
     %userprofile%\AppData\Local\Chromium\Application\chrome.exe --user-data-dir=%temp% --load-extension=%userprofile%\AppData\Local\Chromium\Application\Omega
     echo Sucessfully Installed the extension to Chromium
)
echo Removing temporary files...
rm popup.html
rm style.css
rm manifest.json
cd img
rm Omega-Logo.png
cd ..
echo Done.
pause
