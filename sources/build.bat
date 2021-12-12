cd %~dp0
rmdir /S /Q dist
pyinstaller -F add2vals.py
pause