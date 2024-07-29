@echo off
setlocal
rmdir /S /Q "%LOCALAPPDATA%\temp\XenEngine"
REM -------------------------------------------------------------------
REM Global config
REM -------------------------------------------------------------------
set XEN_OUTPUT_DIR=%~dp0\..\Bin
set XEN_VSIX=%XEN_OUTPUT_DIR%\VSIX\XenEngine.vsix
REM -------------------------------------------------------------------
REM Build XenEngine
REM -------------------------------------------------------------------
IF EXIST "%XEN_VSIX%" GOTO :vsixok
echo Error, unable to find XenEngine VSIX [%STRIDE_VSIX%]
echo Run 00-BuildXen.bat before trying to install the VisualStudio package
pause
exit /b 1
:vsixok
"%XEN_VSIX%"
