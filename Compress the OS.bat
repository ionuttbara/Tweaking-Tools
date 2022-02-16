@echo off
compact /C /S:"C:\Program Files" /A /I
compact /C /S:"C:\Program Files (x86)" /A /I
compact /C /S:"C:\ProgramData" /A /I
compact /C /S:"%userprofile%\AppData" /A /I
exit
