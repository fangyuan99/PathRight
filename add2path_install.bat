@echo off

echo set WshShell = WScript.CreateObject("WScript.Shell")>tmp.vbs
echo set oShellLink = WshShell.CreateShortcut("%appdata%" ^& "\Microsoft\Windows\SendTo\add2path.lnk")>>tmp.vbs
echo oShellLink.TargetPath ="%~dp0\add2path.bat">>tmp.vbs
echo oShellLink.WindowStyle ="1">>tmp.vbs
echo oShellLink.IconLocation = "%windir%\explorer.exe" >> tmp.vbs
echo oShellLink.Description = "">>tmp.vbs
echo oShellLink.WorkingDirectory = "%~dp0">>tmp.vbs
echo oShellLink.Save>>tmp.vbs
call tmp.vbs
del /f /q tmp.vbs

echo successfully & pause > nul
