@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

start ..\dependencies\GoodbyeDPI\"%_arch%"\goodbyedpi.exe -5 --dns-addr 47.254.192.66 --dns-port 1753

POPD
POPD
