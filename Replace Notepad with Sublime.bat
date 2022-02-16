
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" /v "Debugger" /t REG_SZ /d "C:\Program Files\Sublime Text 3\SublimeLauncher.exe -z" /f
reg delete "HKEY_CLASSES_ROOT\*\shell\Open with Notepad" /f
pause