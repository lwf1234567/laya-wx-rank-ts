cd /d %~dp0
set srcDir=release\wxgame
set dstDir=..\wxgame\src\openDataContext

del /f /s /q %srcDir%\res\*.*
rd /s /q %srcDir%\res
del /f /s /q %srcDir%\libs\*.*
rd /s /q %srcDir%\libs
del /f /s /q %srcDir%\js\*.*
rd /s /q %srcDir%\js
move %srcDir%\game.js %srcDir%\index.js
del /f /s /q %dstDir%\*.*
Xcopy %srcDir% %dstDir% /s /e /y