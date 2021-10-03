#SingleInstance force 
#MaxHotkeysPerInterval 2000
Menu, Tray, Icon, shell32.dll, 303 ; this changes the tray icon to a little check mark!

DetectHiddenText, On

lol:
WinWait, Avertissement ahk_exe Adobe Premiere Pro.exe
sendinput, {enter}
sleep 100
goto lol

