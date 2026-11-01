@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting Administrator Privileges...
    powershell -Command "Start-Process -FilePath '%0' -Verb RunAs"
    exit /b
)
echo This installer is supported on x86, x64 and ARM64 systems. ARM32 is not supported.
cd /d "%~dp0"
echo Installing CH34x / CH91xx Driver...
pnputil /add-driver CH341SER.INF /install
pause