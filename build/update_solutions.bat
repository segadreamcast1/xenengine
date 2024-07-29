@echo off

echo Processing Runtime (using Linux template)
..\sources\tools\XenProjectGenerator\bin\Debug\net472\XenProjectGenerator.exe solution XenEngine.sln -o XenRuntime.sln -p Linux
echo.

echo Processing Android
..\sources\tools\XenProjectGenerator\bin\Debug\net472\XenProjectGenerator.exe solution XenEngine.sln -o Xen-Android.sln -p Android
echo.

echo Processing iOS
..\sources\tools\XenProjectGenerator\bin\Debug\net472\XenProjectGenerator.exe solution XenEngine.sln -o Xen-iOS.sln -p iOS
echo.
