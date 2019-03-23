@echo off

set PUTTY="C:\Program Files\PuTTY"

set ADDRESS=192.168.1.1
set USER=admin
set PASS=admin
set LOCAL=script.txt

set SCRIPT=%RANDOM%.txt

%PUTTY%\plink.exe -ssh -pw %PASS% %USER%@%ADDRESS% "script -create -name=%SCRIPT%"
%PUTTY%\pscp.exe -pw %PASS% %USER%@%ADDRESS%:script/%SCRIPT% %LOCAL%
%PUTTY%\plink.exe -ssh -pw %PASS% %USER%@%ADDRESS% "script -remove -name=%SCRIPT%"
