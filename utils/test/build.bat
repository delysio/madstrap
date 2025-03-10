@setlocal
@SET PATH=%PATH%;D:\atari\MadPascal;D:\atari\mads
@SET NAME=start_nos
@SET ADDINTRO=1
@SET INTRONAME=intro
@SET NAMEOUT=%NAME%_full

mp.exe %NAME%.pas -code:2000
@if %ERRORLEVEL% == 0 mads %NAME%.a65 -x -i:D:\atari\MadPascal\base -o:%NAME%.xex

REM *** example intro file ***

@IF %ADDINTRO%==1 (

mp.exe %INTRONAME%.pas -code:2000
@if %ERRORLEVEL% == 0 mads %INTRONAME%.a65 -x -i:D:\atari\MadPascal\base -o:%INTRONAME%.xex

@if %ERRORLEVEL% == 0 python utils\run2init.py %INTRONAME%.xex 
@if %ERRORLEVEL% == 0 copy /b %INTRONAME%.xex + %NAME%.xex %NAMEOUT%.xex
@if %ERRORLEVEL% == 0 D:\atari\Altirra\altirra64.exe %NAMEOUT%.xex

) ELSE (

@if %ERRORLEVEL% == 0 D:\atari\Altirra\altirra64.exe %NAME%.xex

)