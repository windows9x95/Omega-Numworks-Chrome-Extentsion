@echo off
echo Welcome to this Auto-Installer of the Omega Extension for Chromium based web browser (BETA Feature)
echo For now only Google Chrome and Chromium 
echo If there are missing please download them at following link
echo https://github.com/hectornuss/Omega-Numworks-Chrome-Extentsion
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
pause
