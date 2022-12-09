@echo off
set a=D:/laba/
if not exist %a% (
chcp 65001
echo "данной папки нет"
pause 
exit
)
del %a%\rez.txt
echo %~dp0
for /r %a% %%i in (*.txt) do findstr /r ^[vV] "%%i">>%a%\rez.txt
start %a%\rez.txt
pause