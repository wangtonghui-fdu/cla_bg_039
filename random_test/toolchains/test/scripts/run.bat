:: read env
@set ENV_PATH=%PATH%
::@echo ===path
::@echo %ENV_PATH%

@set PATH=%PATH%;C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin
@set PATH=%PATH%;C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE
::@echo %PATH%

:: set include path
@set INCLUDE=%INCLUDE%;C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\include
@set INCLUDE=%INCLUDE%;C:\Program Files (x86)\Windows Kits\10\Include\10.0.10240.0\ucrt
::@echo include=%INCLUDE%

::set lib
@set LIB=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\lib;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Lib;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.10240.0\ucrt\x86

:: compile
@cl.exe /DCROSS_VALIDATION %1 /Fe:../testcase_8/ /Fo:../testcase_8/