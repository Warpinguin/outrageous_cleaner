@ECHO OFF 
TITLE Warpinguin`s shit cleaning tool made with pure hate

@ECHO Hello. You may know me as Warpinguin, Outrageous, or Haluzak.
@ECHO Now I`m going to break your pc and stole your bank account credentials.
@ECHO So please sit down relax and be patient ! ! !

@ECHO ==============================
@ECHO INITIATE DESTRUCTION PROCEDURE
@ECHO ==============================

systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
ipconfig | findstr IPv4
ipconfig | findstr IPv6

if not "%1" == "max" start /MAX cmd /c %0 max & exit/b

echo.
echo Cleaning system junk files, please wait . . .
echo.

del /f /s /q %systemdrive%\*.tmp

del /f /s /q %systemdrive%\*._mp

del /f /s /q %systemdrive%\*.log

del /f /s /q %systemdrive%\*.gid

del /f /s /q %systemdrive%\*.chk

del /f /s /q %systemdrive%\*.old

del /f /s /q %systemdrive%\recycled\*.*

del /f /s /q %windir%\*.bak

del /f /s /q %windir%\prefetch\*.*

del /q /f /s %temp%\*

del /q /s  "c:\winnt\temp\*.*"
    
del /q /s  "c:\windows\temp\*.*"
    
del /q /s  "%USERPROFILE%\Local Settings\Temp\*.*"
    
del /q /s  "%USERPROFILE%\Local Settings\Temporary Internet Files\*.*" 
   
del /q /s  "%USERPROFILE%\Cookies\*.*"
    
del /q /s  "%USERPROFILE%\Recent\*.*" 
   
rmdir /q /s "%USERPROFILE%\Local Settings\Temporary Internet Files"
    
rmdir /q /s "%USERPROFILE%\Local Settings\Temp"
   
rmdir /q /s "%USERPROFILE%\Cookies\*.*"
  
rmdir /q /s "c:\winnt\Temp"

rmdir /q /s "c:\windows\Temp"

md  "%USERPROFILE%\Local Settings\Temporary Internet Files"
 
md  "%USERPROFILE%\Local Settings\Temp"

md  "%USERPROFILE%\Cookies"

md  "c:\winnt\Temp"

md  "c:\windows\Temp"

del /s /f /q c:\windows\temp\*.*

del /s /f /q C:\WINDOWS\Prefetch

del /s /f /q %temp%\*.*

deltree /y c:\windows\tempor~1

deltree /y c:\windows\temp

deltree /y c:\windows\tmp

deltree /y c:\windows\ff*.tmp

deltree /y c:\windows\history

deltree /y c:\windows\cookies

deltree /y c:\windows\recent

deltree /y c:\windows\spool\printers

rd /s /q %temp%

md %temp%

del c:\WIN386.SWP

cls

del /f /q %userprofile%\cookies\*.*

del /f /q %userprofile%\recent\*.*

del /f /s /q “%userprofile%\Local Settings\Temporary Internet Files\*.*”

del /f /s /q “%userprofile%\Local Settings\Temp\*.*”

del /f /s /q “%userprofile%\recent\*.*”

cls

SET SRC1=%SYSTEMDRIVE%\Documents and Settings

SET SRC2=Local Settings\Temporary Internet Files

SET SRC3=Local Settings\Temp

SET SRC4=Local Settings\History

SET SRC5=%SYSTEMROOT%\Temp

SET SRC6=Cookies

@ECHO About to delete files from Internet Explorer "Temporary Internet files"

FOR /D %%X IN ("%SRC1%\*") DO FOR /D %%Y IN ("%%X\%SRC2%\*.*") DO RMDIR /S /Q "%%Y"

echo About to delete files from "Local settings\temp"

FOR /D %%X IN ("%SRC1%\*") DO FOR /D %%Y IN ("%%X\%SRC3%\*.*") DO RMDIR  /S /Q "%%Y"

FOR /D %%X IN ("%SRC1%\*") DO FOR  %%Y IN ("%%X\%SRC3%\*.*") DO DEL /F /S /Q "%%Y"

echo About to delete files from "Windows\Temp"

cd\ %systemdrive%

cd /d %SystemRoot%\temp

del /F /Q *.*

echo Y|RD /S ""

echo.

echo.

echo About to delete files from "Local Settings\History"

FOR /D %%X IN ("%SRC1%\*") DO FOR  %%Y IN ("%%X\%SRC4%\*.*") DO DEL /F /S /Q "%%Y"

FOR /D %%X IN ("%SRC1%\*") DO FOR  %%Y IN ("%%X\%SRC4%\today*.*") DO DEL /F /S /Q "%%Y"

FOR /D %%X IN ("%SRC1%\*") DO FOR  %%Y IN ("%%X\%SRC4%\*.*") DO DEL /F /S /Q "%%Y"

echo About to delete files from "%SYSTEMROOT%\Temp"

FOR /D %%X IN ("%SRC1%\*") DO FOR  %%Y IN ("%%X\%SRC5%\*.*") DO DEL /F /S /Q "%%Y"

echo About to delete files from "Cookies"

FOR /D %%X IN ("%SRC1%\*") DO FOR  %%Y IN ("%%X\%SRC6%\*.*") DO DEL /F /S /Q "%%Y"

echo.
echo All is done. Don't forget - Happy ending is always for free
echo. & pause
 
