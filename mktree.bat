:: dist
:: -bin
::  -Win32
::   -Release
::   -Debug
::  -x64
::   -Release
::   -Debug
:: -lib
::  -Win32
::   -Release
::   -Debug
::  -x64
::   -Release
::   -Debug
:: -include

if {%~dp1}=={} goto _exit

if not exist %1 mkdir %1
cd %1
call :pc_create lib
call :pc_create bin
if not exist include mkdir include
cd ..

goto _exit

:pc_create
	if not exist %1 mkdir %1
	cd %1
	set dirs=Win32 Win32\Debug Win32\Release x64 x64\Debug x64\Release
	for %%d in (%dirs%) do (
		if not exist %%d (
            echo creating %%d
            mkdir %%d
        )
	)
	cd ..
	goto :EOF
	
:_exit