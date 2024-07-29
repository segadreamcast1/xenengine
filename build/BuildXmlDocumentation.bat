CALL "C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\Tools\VsDevCmd.bat"
msbuild XenEngine.build /p:StridePublicApi=true /t:BuildWindows > NUL

