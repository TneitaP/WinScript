@echo off
DEL /S /Q /F \\?\%1
RD /S /Q \\?\%1
echo finished!
pause