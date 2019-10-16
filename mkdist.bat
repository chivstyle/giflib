set DST=giflib521-dist

call mktree.bat %DST%

copy Debug\*.lib   %DST%\lib\Win32\Debug
copy Debug\*.dll   %DST%\bin\Win32\Debug
copy Release\*.lib %DST%\lib\Win32\Release
copy Release\*.dll %DST%\bin\Win32\Release

copy x64\Debug\*.lib   %DST%\lib\x64\Debug
copy x64\Debug\*.dll   %DST%\bin\x64\Debug
copy x64\Release\*.lib %DST%\lib\x64\Release
copy x64\Release\*.dll %DST%\bin\x64\Release

copy ..\gif_lib.h %DST%\include