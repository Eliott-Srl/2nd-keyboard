#SingleInstance force ; only 1 instance of this script may run at a time.
#InstallMouseHook
#InstallKeybdHook

CoordMode, Mouse, screen
CoordMode, Pixel, screen

Menu, Tray, Icon, imageres.dll, 90

; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
; NOTE THAT YOU MUST ASSIGN \ (backslash) TO "Move playhead to cursor" IN PREMIERE'S KEYBOARD SHORTCUTS PANEL!
; YOU SHOULD ALSO ASSIGN CTRL ALT D to "DESELECT ALL" 
; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


;NOTE: I use the right mouse button for this because my current mouse does not have macro keys on it. I could use the middle mouse button, but it requires too much pressure to push down so often, and you have to be careful not to accidentally scroll it.
;But if you want to use a button other than the right mouse button, the script becomes a lot simpler. Scroll down to the bottom for that script.

;NOTE: This does not, and cannot work on the timeline where there are no tracks visible.
;Explanation: https://twitter.com/boxrNathan/status/927371468371103745
;That is color 0x212121, and last I checked, it shows up in many other places in premiere, not just that part of the timeline.
;The easy solution is to just fill up your timeline with tracks; have no blank space.

;---------------------------------------------------------------------------------------

timeline1 = 0x414141
timeline2 = 0x313131
timeline3 = 0x1b1b1b
timeline4 = 0x202020
timeline5 = 0xDFDFDF
timeline6 = 0xE4E4E4
timeline7 = 0xBEBEBE 


#IfWinActive ahk_exe Adobe Premiere Pro.exe 

Rbutton::
MouseGetPos X, Y
PixelGetColor colorr, %X%, %Y%, RGB
if (colorr = timeline5 || colorr = timeline6 || colorr = timeline7) 
	send {ESC} 
if (colorr = timeline1 || colorr = timeline2 || colorr = timeline3 || colorr = timeline4 || colorr = timeline5 || colorr = timeline6 || colorr = timeline7)
{
	click middle
	if GetKeyState("Rbutton", "P") = 1
		{
		;tooltip, we are inside the IF now
		;sleep 1000
		;tooltip,
		loop
			{
			Send (
			;Tooltip, Right click playhead mod!
			sleep 5
			if GetKeyState("Rbutton", "P") = 0
				{
				tooltip,
				goto theEnd
				break
				}
			}
		}
	;tooltip,
	Send {escape} 
	;MouseClick, left
}
else
	sendinput {Rbutton} 
theEnd:
Return


; #ifwinactive ahk_exe AdobePremierePro.exe
; Mbutton::
; if GetKeyState("Mbutton", "P") = 1
		; {
		; loop
			; {
			; Send § ;in premiere, this must be set to "move playhead to cursor."
			; ;Tooltip, button 5 playhead mod!
			; sleep 16 ;this loop will repeat every 16 milliseconds.
			; if GetKeyState("Mbutton", "P") = 0
				; {
				; ;msgbox,,,time to break,1
				; tooltip,
				; goto theEnd2
				; break
				; }
			; }
; }
; theEnd2:
; Return

