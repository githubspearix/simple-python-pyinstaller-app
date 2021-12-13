cd %~dp0
set PATH=%PATH%;C:\Users\manas\AppData\Local\Programs\Python\Python38\Scripts\

rmdir /S /Q dist
pyinstaller -F add2vals.py
copy dist\add2vals.exe C:\Users\manas\Dropbox\