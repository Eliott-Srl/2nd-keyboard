#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force 
#MaxHotkeysPerInterval 2000
#WinActivateForce 
SetWorkingDir, C:\Users\panth\Documents\2nd-keyboard\support_files
Menu, Tray, Icon, shell32.dll, 283


; # == windows button, ! == alt, ^ == ctrl, + == shift


#IfWinActive ahk_exe Adobe Premiere Pro.exe
F24::
FileRead, key, C:\Users\panth\Documents\2nd-keyboard\keypressed.txt
if (key = "esc") ;simulate the esc
send {esc}


; minus one line :
else if(key = "space")
send ^!l


; first line :
else If (key = "<") ;outil select
	{
	sendinput v
	sleep 5
	sendinput ^!d
	}
else if(key = "w") ;DELETE SINGLE CLIP AT CURSOR
	{
	prFocus("timeline")
	send, ^!d 
	send, v
	send, {alt down}
	send, {lbutton}
	send, {alt up}
	send, c
	}
; else If (key = "x")
; 
; else If (key = "c")
; 
; else If (key = "v")
; 
; else if(key = "b") 
; 
; else if(key = "n") 
; 
; else if(key = "comma") 
; 
; else if(key = "period") 
; 
; else if(key = ":")
; 
; else if(key = "!")
; 


; second line
else if(key = "q") ;lock the music line
	{
	tracklocker()
	}
; else If (key = "s")
; 
else if(key = "d") ;reverse the clip
	{
	click, left
	sendinput, ^r
	sendinput, {tab}
	sendinput, {tab}
	sendinput, {space}
	sendinput, {enter}
	}
else if (key = "f") ;create a text with the preset "text default"
	{
	BlockInput, SendAndMouse     ;freeze the mouse
	BlockInput, MouseMove        ;freeze the mouse
	BlockInput, On               ;freeze the mouse
	send ^t                      ;create the text
	MouseGetPos, xposP2, yposP2  ;backup the mouse's position
	mousemove, 80, 75, 0         ;go to the MY effect's panel
	click left
	sleep 5
	send, ^!u
	mousemove, 100, 300, 0
	preset("text default")
	sleep 5
	mousemove, xposP2, yposP2, 0
	MouseClick, middle
	blockinput, off
	blockinput, MouseMoveOff
	}
else If (key = "g") ;just do a control z -> undo
sendinput ^z
else if(key = "h") ;select all the start to cursor things
sendinput, a
else if(key = "j") ;select all the end to cursor things
sendinput, +a
else if(key = "k") ;arrêt sur image
	{
	send ^!+k
	Send ^!s
	send ^!x
	}
else if (key = "l") ;create a text with the preset "subtitles"
	{
	BlockInput, SendAndMouse     ;freeze the mouse
	BlockInput, MouseMove        ;freeze the mouse
	BlockInput, On               ;freeze the mouse
	send ^t                      ;create the text
	MouseGetPos, xposP2, yposP2  ;backup the mouse's position
	mousemove, 80, 75, 0         ;go to the MY effect's panel
	click left
	sleep 5
	send, ^!u
	mousemove, 100, 300, 0
	preset("subtitles")
	sleep 5
	mousemove, xposP2, yposP2, 0
	MouseClick, middle
	blockinput, off
	blockinput, MouseMoveOff
	}
else if(key = "m")
	recallClipboard("intervention_texte.clp")
; else if(key = "ù")
; 
; else if(key = "*")
; 
else if(key = "enter")
sendinput, {enter}


; third line :
else if(key = "a") ; flip to the right
preset("flip right")
else if(key = "z") ; zoom at 120%
preset("echelle 120")
else if(key = "e") ; zoom at 150%
preset("echelle 150")
else if(key = "r") ; flip to the left
preset("flip left")
else if(key = "t")
preset("pop in")
else if(key = "y")
preset("pop out")
else if(key = "u")
	{
	preset("volume -999")  ;mute for rushs
	preset("volume -999 2") ;mute for sequence ; i don't know why i have to apply 2 effects
	}
; else if(key = "i")
; 
; else if(key = "o")
; 
; else if(key = "p")
; 
; else if(key = "$")
; 


; fourth line :
; else if(key = "²")
; 
; else if(key = "&")
;  
; else if(key = "é")
;  
; else if(key = """)
;  
; else if(key = "'")
;  
; else if(key = "(")
;  
; else if(key = "-")
; 
; else if(key = "è")
;  
; else if(key = "_")
;  
; else if(key = "ç")
;  
; else if(key = "à")
;  
; else if(key = ")")
;  
; else if(key = "=")
;  
else if(key = "backspace") ;delete the clip under the playhead
	{
	Send ^!s ;ctrl alt s  is assigned to [select clip at playhead]
	sleep 1
	Send ^+!d ;ctrl alt shift d  is [ripple delete]
	sleep 1
	}
	
	
; fifth line :
; else if(key = "F1")
; 
; else if(key = "F2")
; 
; else if(key = "F3")
; 
; else if(key = "F4")
; 
; else if(key = "F5")
; 
; else if(key = "F6")
; 
; else if(key = "F7")
; 
; else if(key = "F8")
; 
; else if(key = "F9")
; 
; else if(key = "F10")
; 
else if(key = "F11")
	{
	; BlockInput, SendAndMouse
	; BlockInput, MouseMove
	; BlockInput, On
	sleep 5
	sendinput, ^!+g
	sleep 5
	MouseGetPos, xposP, yposP
	MouseMove, 244, 640, 0
	sleep 5
	MouseClick, right
	}
else if(key = "F12")
recallClipboard("outro.clp")

; the keys between enter and 7 :
else if(key = "home")
	{
	sendinput, ^!+o
	sendinput, ^!+p
	}
else if(key = "pageup")
	{
	sendinput, ^!+q
	sendinput, ^!+s
	}
else if(key = "delete")
send ^!u
else if(key = "end")
	{
	sendinput, ^!+f
	sendinput, ^!+h
	}
else if(key = "pagedown")
	{
	sendinput, ^!+j
	sendinput, ^!+l
	}

; numpad :
else if(key = "num0") ;just mirroring the normal numpad - IDK how else to do this.
Send {Numpad0}
else if(key = "num1")
Send {Numpad1}
else if(key = "num2")
Send {Numpad2}
else if(key = "num3")
Send {Numpad3}
else if(key = "num4")
Send {Numpad4}
else if(key = "num5")
Send {Numpad5}
else if(key = "num6")
Send {Numpad6}
else if(key = "num7")
Send {Numpad7}
else if(key = "num8")
Send {Numpad8}
else if(key = "num9")
Send {Numpad9}
else if(key = "numDiv")
Send {NumpadDiv}
else if(key = "numMult")
Send {NumpadMult}
Return 









;will reload the script, this was the first AHK script I ever wrote !
#ifwinactive ahk_class Notepad++
^r::
send ^s
sleep 10
reload
return


#IfWinNotActive ahk_exe Adobe Premiere Pro.exe
F24::
FileRead, key, C:\Users\panth\Documents\2nd-keyboard\keypressed.txt
if(key = "num0") ;just mirroring the normal numpad - IDK how else to do this.
Send ^{F13}
else if(key = "num1")
Send ^{F14}
else if(key = "num2")
Send ^{F15}
else if(key = "num3")
Send ^{F16}
else if(key = "num4")
Send ^{F17}
else if(key = "num5")
Send ^{F18}
else if(key = "num6")
Send ^{F19}
else if(key = "num7")
Send ^{F20}
else if(key = "num8")
Send ^{F21}
else if(key = "num9")
Send ^{F22}
Return 




prFocus(panel)
{
Sendinput, ^+!e 
sleep 12
Sendinput, ^+!e
sleep 5
sendinput, {blind}{SC0EA}
if (panel = "effects")
	Sendinput, ^!+t
else if (panel = "timeline")
	Sendinput, ^!+a
else if (panel = "program")
	Sendinput, ^!+u
else if (panel = "source")
{
	Sendinput, ^!+i
	;tippy("send ^!+2")
}
else if (panel = "project")
	Sendinput, ^!+y
else if (panel = "effect controls")
	Sendinput, ^!+r

theEnd:
sendinput, {blind}{SC0EB}
}














preset(item)
{
keywait, %A_PriorHotKey% 

coordmode, pixel, Window
coordmode, mouse, Window
coordmode, Caret, Window

SetKeyDelay, 0

Sendinput, ^!+k
sleep 10
Sendinput, ^!+k
sleep 5

BlockInput, SendAndMouse
BlockInput, MouseMove
BlockInput, On

MouseGetPos, xposP, yposP
MouseMove, xposP-10, yposP-5, 0 
MouseGetPos, xposP, yposP


if IsFunc("effects_panelClick") ;This checks to see if you have a function named "effects_panelClick"
	{
	Func := Func("effects_panelClick")
	sleep 320 ;because it might take awhile to appear in Premiere,  and I'm not gonna do another loop think liek I did above...
	RetVal := Func.Call() 
	}
;;If you don't have effects_panelClick, then nothing happens. That's good!


MouseMove, 0, 50, 0, R
sendinput, {mButton}

BlockInput, SendAndMouse
BlockInput, MouseMove
BlockInput, On

send, ^b
if (A_CaretX = "")
{
;No Caret (blinking vertical line) can be found.

;The following loop is waiting until it sees the caret. THIS IS SUPER IMPORTANT, because Premiere is sometimes quite slow to actually select the find box, and if the function tries to proceed before that has happened, it will fail. This would happen to me about 10% of the time.
;Using the loop is also way better than just ALWAYS waiting 60 milliseconds like I was before. With the loop, this function can continue as soon as Premiere is ready.

;sleep 60 ;<—Use this line if you don't want to use the loop below. But the loop should work perfectly fine as-is, without any modification from you.

waiting2 = 0
loop
	{
	waiting2 ++
	sleep 33
	tooltip, counter = (%waiting2% * 33)`nCaret = %A_CaretX%
	if (A_CaretX <> "")
		{
		tooltip, CARET WAS FOUND
		break
		}
	if (waiting2 > 40)
		{
		tooltip, FAIL - no caret found. `nIf your cursor will not move`, hit the button to call the preset() function again.`nTo remove this tooltip`, refresh the script using its icon in the taskbar.`n`nIt's possible Premiere tried to AUTOSAVE at just the wrong moment!
		;Note to self, need much better way to debug this than screwing the user. As it stands, that tooltip will stay there forever.
		;USER: Running the function again, or reloading the script, will remove that tooltip.
		;sleep 200
		;tooltip,
		sleep 20
		GOTO theEndingOfPreset
		}
	}
sleep 1
tooltip,
}
;The loop has now ended.
;yeah, I've seen this go all the way up to "8," which is 264 milliseconds

MouseMove, %A_CaretX%, %A_CaretY%, 0 ;this moves the cursor, instantly, to the position of the caret.
sleep 5 ;waiting while Windows does this. Just in case it takes longer than 0 milliseconds.
;;;and fortunately, AHK knows the exact X and Y position of this caret. So therefore, we can find the effects panel find box, no matter what monitor it is on, with 100% consistency!

;tooltip, 1 - mouse should be on the caret X= %A_CaretX% Y= %A_CaretY% now ;;this debugging line was super helpful in me solving this one! Connent this line in if you want to use it, but comment it out after you've gotten the whole function working.

;;;msgbox, caret X Y is %A_CaretX%, %A_CaretY%

MouseGetPos, , , Window, classNN
WinGetClass, class, ahk_id %Window%

;tooltip, 2 - ahk_class =   %class% `nClassNN =     %classNN% `nTitle= %Window%

;;;note to self, I think ControlGetPos is not affected by coordmode??  Or at least, it gave me the wrong coordinates if premiere is not fullscreened... IDK. https://autohotkey.com/docs/commands/ControlGetPos.htm

ControlGetPos, XX, YY, Width, Height, %classNN%, ahk_class %class%, SubWindow, SubWindow 

;note to self, I tried to exclude subwindows but I don't think it works...?
;;my results:  59, 1229, 252, 21,     Edit1,     ahk_class Premiere Pro
;tooltip, classNN = %classNN%

;;Now we have found a lot of useful information about this find box. Turns out, we don't need most of it...
;;we just need the X and Y coordinates of the "upper left" corner...

;;Comment in the following line to get a message box of your current variable values. The script will not advance until you dismiss a message box. (Use the enter key.)
;MsgBox, xx=%XX% yy=%YY%

;; https://www.autohotkey.com/docs/commands/MouseMove.htm

;MouseMove, XX-25, YY+10, 0 ;--------------------for 150% UI scaling, this moves the cursor onto the magnifying glass
MouseMove, XX-15, YY+10, 0 ;--------------------for 100% UI scaling, this moves the cursor onto the magnifying glass

;msgbox, should be in the center of the magnifying glass now. ;;<--comment this in for help with debugging.

sleep 5

Sendinput, %item%
;This types in the text you wanted to search for, like "crop 50". We can do this because the entire find box (and any included text) was already selected.
;Premiere will now display your preset at the top of the list. There is no need to press "enter" to search.


sleep 5

;MouseMove, 62, 95, 0, R ;----------------------(for 150% UI.)
MouseMove, 41, 63, 0, R ;----------------------(for 100% UI)
;;relative to the position of the magnifying glass (established earlier,) this moves the cursor down and directly onto the preset's icon.

;;In my case, all of my presets are contained inside of folders, which themselves are inside the "presets" folder. Your preset's written name should be completely unique so that it is the first and only item.

;msgbox, The cursor should be directly on top of the preset's icon. `n If not, the script needs modification.

sleep 5

;;At this point in the function, I used to use the line "MouseClickDrag, Left, , , %xposP%, %yposP%, 0" to drag the preset back onto the clip on the timeline. HOWEVER, because of a Premiere bug (which may or may not still exist) involving the duplicated displaying of single presets (in the wrong positions) I have to click on the Effects panel AGAIN, which will "fix" it, bringing it back to normal.
;+++++++ If this bug is ever resolved, then the lines BELOW are no longer necessary.+++++
MouseGetPos, iconX, iconY, Window, classNN ;---now we have to figure out the ahk_class of the current panel we are on. It might be "DroverLord - Window Class14", but the number changes anytime you move panels around... so i must always obtain the information anew.
sleep 5
WinGetClass, class, ahk_id %Window% ;----------"ahk_id %Window%" is important for SOME REASON. if you delete it, this doesn't work.
;tooltip, ahk_class =   %class% `nClassNN =     %classNN% `nTitle= %Window%
;sleep 50
ControlGetPos, xxx, yyy, www, hhh, %classNN%, ahk_class %class%, SubWindow, SubWindow ;;-I tried to exclude subwindows but I don't think it works...?
MouseMove, www/4, hhh/2, 0, R ;-----------------moves to roughly the CENTER of the Effects panel. Clicking here will clear the displayed presets from any duplication errors. VERY important. Without this, the script fails 20% of the time. This is also where the script can go wrong, by trying to do this on the timeline, meaning it didn't get the Effects panel window information as it should have.
sleep 5
MouseClick, left, , , 1 ;-----------------------the actual click
sleep 5
MouseMove, iconX, iconY, 0 ;--------------------moves cursor BACK onto the preset's icon
;tooltip, should be back on the preset's icon
sleep 5
;;+++++If this bug is ever resolved, then the lines ABOVE are no longer necessary.++++++


MouseClickDrag, Left, , , %xposP%, %yposP%, 0 ;---clicks the left button down, drags this effect to the cursor's pervious coordinates and releases the left mouse button, which should be above a clip, on the TIMELINE panel.
sleep 5
MouseClick, middle, , , 1 ;this returns focus to the panel the cursor is hovering above, WITHOUT selecting anything. great! And now timeline shortcuts like JKL will work.

blockinput, MouseMoveOff ;returning mouse movement ability
BlockInput, off ;do not comment out or delete this line -- or you won't regain control of the keyboard!! However, CTRL ALT DELETE will still work if you get stuck!! Cool.

;The line below is where all those GOTOs are going to.
theEndingOfPreset:
}
;END of preset(). The two lines above this one are super important.














effects_panelClick()
{
;need something that wil toggle ^p if effect controls are not open.
CoordMode Pixel ;, screen
CoordMode Mouse, screen

BlockInput, on
BlockInput, MouseMove
MouseGetPos xPosCursor, yPosCursor


effectControlsX = 700
effectControlsY = 10 ;the coordinates of roughly where my Effect Controls usually are located on the screen

; coordmode, pixel, Window
; coordmode, mouse, Window
; coordmode, Caret, Window

;you might need to take your own screenshot (look at mine to see what is needed) and save as .png. Mine are(were) done with default UI brightness, plus 150% UI scaling in Windows.

;ImageSearch, FoundX, FoundY, effectControlsX, effectControlsY, effectControlsX+200, effectControlsY+800, %A_WorkingDir%\CROP_transform_button_D2019.png ;

ImageSearch, FoundX, FoundY, effectControlsX, effectControlsY, effectControlsX+200, effectControlsY+800, %A_WorkingDir%\effects_panel.png
if ErrorLevel = 1
	{
	;msgbox,,, TaranDir is `n%TaranDir%,0.7
	; ImageSearch, FoundX, FoundY, effectControlsX, effectControlsY, effectControlsX+400, effectControlsY+1200, %A_workingDir%\CROP_transform_button_D2019.png
	ImageSearch, FoundX, FoundY, effectControlsX, effectControlsY, effectControlsX+400, effectControlsY+1200, %A_workingDir%\effects_panel_vanish.png
	}
if ErrorLevel = 2
	{
	;msgbox, we made it to try 2
    msgbox, NO effects panel WAS FOUND
	;YOU DO NOT NEED TIPPY() ... JUST DELETE IT FROM YOUR SCRIPT.
	;IT'S A DEBUGGING THING, DON'T WORRY ABOUT IT, LOL.
	goto resetcropper
	}
if ErrorLevel = 2
	{
    msgbox, Could not conduct the effects panel search!
	goto resetcropper
	}
if ErrorLevel = 0
	{
	MouseMove, FoundX+10, FoundY+10, 0 ;this moves the cursor onto the little square thingy.
	;msgbox, is the cursor in position?
	sleep 5
	click left
	}

resetcropper:
blockinput, off
blockinput, MouseMoveOff
sleep 10

;msgbox, u are in cropland
return
}













tracklocker()
{
BlockInput, on
BlockInput, MouseMove

MouseGetPos xPosCursor, yPosCursor

xPos = 5
yPos = 800 
CoordMode Pixel ;, screen  
CoordMode Mouse, screen

ImageSearch, FoundX, FoundY, xPos, yPos, xPos+600, yPos+1000, *5 %A_WorkingDir%\unlocked_5th_line.png
if ErrorLevel = 1
	ImageSearch, FoundX, FoundY, xPos, yPos, xPos+600, yPos+1000, *5 %A_WorkingDir%\unlocked_5th_line.png
if ErrorLevel = 1
	{
	;msgbox, we made it to try 2
    ;msgbox, NO UNLOCK WAS FOUND
	goto try2
	}
if ErrorLevel = 2
	{
    ;msgbox, Could not conduct the search!
	goto resetlocker
	}
if ErrorLevel = 0
	{
	;tooltip, The icon was found at %FoundX%x%FoundY%.
	;msgbox, The icon was found at %FoundX%x%FoundY%.
	MouseMove, FoundX+10, FoundY+10, 0
	sleep 5
	click left
	goto resetlocker
	}
	
try2:
if ErrorLevel = 1
	{
	;msgbox, try 2 part 1
	ImageSearch, FoundX_LOCK, FoundY_LOCK, xPos, yPos, xPos+600, yPos+1000, *5 %A_WorkingDir%\locked_5th_line.png
	}
if ErrorLevel = 1
	{
    ;msgbox, ALT LOCKED TARGETED V1 could not be found on the screen
	ImageSearch, FoundX_LOCK, FoundY_LOCK, xPos, yPos, xPos+600, yPos+1000, *5 %A_WorkingDir%\IDK_2.png
	}
if ErrorLevel = 2
	{
    ;msgbox, Could not conduct search #2
	goto resetlocker
	}
	
if ErrorLevel = 0
	{
	MouseMove, FoundX_LOCK+10, FoundY_LOCK+10, 0
	sleep 5
	click left ;clicks on Video track 1
	MouseMove, FoundX_LOCK+10, FoundY_LOCK+60, 0
	click left ;clicks on Audio track 1 as well.
	sleep 10
	goto resetlocker
	}
;msgbox, , , num enter, 0.5;msgbox, , , num enter, 0.5
resetlocker:
MouseMove, xPosCursor, yPosCursor, 0
blockinput, off
blockinput, MouseMoveOff
sleep 10
}













insertSFX(leSound)
{
ifWinNotActive ahk_exe Adobe Premiere Pro.exe
	goto sfxEnding

CoordMode, mouse, Screen
CoordMode, pixel, Screen
coordmode, Caret, screen

BlockInput, mouse
blockinput, MouseMove
BlockInput, On

SetKeyDelay, 0 ;for instant writing of text

MouseGetPos, xpos, ypos
send ^+x ;ctrl shift x -- shortcut in premiere for "remove in/out points.
sleep 10
send ^2
send ^4 
sleep 10
mousemove, 140, 75, 0
mouseclick, left
sleep 20
Send ^b 
Send %leSound% 
sleep 400 
MouseMove, 143, 202, 0 
MouseClick, left
MouseMove, %xpos%, %ypos%, 0 ;move mouse back to original coordinates.
sleep 20
;send ^!+3 ;select timeline
sleep 10
Send ^+:
sleep 30
MouseMove, 143, 202, 0 
MouseClick, middle, , , 1
send ^b
send ^!u
MouseMove, %xpos%, %ypos%, 0
BlockInput, off
BlockInput, MouseMoveOff
sfxEnding:
}
;end of insertSFX()













recallClipboard(int, transition := 0) {
	prFocus("timeline")
	loadFromFile("clipTEXT.clp") ;to create this file, just highlight some plain text, copy it, and use insideclipboard.exe to save it as clipTEXT.clp. The clipboard MUST have some text inside; it CANNOT be completely empty. This has the effect of DELETING all the aspects of the clipboard, EXCEPT for text.
	sleep 15
	;Autohotkey can now delete that string of text, so that no text is accidentlaly pasted into premiere. It doesn't seem to be able to delete EVERYTHING, so the above code is definitely necessary!
	clipboard = 
	;The clipboard is now completely empty.
	sleep 10
	
	#IfWinActive ahk_exe Adobe Premiere Pro.exe
	SendInput, {Shift Down}{Shift Up}
	sleep 10
	SendInput, {Ctrl Down}{v Down} ;this is a MUCH more robust way of using the keyboard shortcuts to PASTE, rather than just using "Send ^v"
	sleep 5
	SendInput, {v Up}{Ctrl Up}
	sleep 20
	
	;It is necessary to PASTE this COMPLETELY BLANK clipboard into premiere, or Premiere won't "know" that the clipboard has been completely emptied.
	;If you don't do this, Premiere will just use whatever thing you had previously copied inside of Premiere.
	clipboard = 
	;the above line is another method for clearing the clipboard that must also be done to ensure a totally empty clipboard
	sleep 30
	#IfWinActive ahk_exe Adobe Premiere Pro.exe
	loadFromFile(int) ;now we are loading the previously saved clipboard file!
	sleep 15
	#IfWinActive ahk_exe Adobe Premiere Pro.exe 
	WinActivate, Adobe Premiere Pro
	SendInput, {Shift Down}{Shift Up}{Ctrl Down}{v Down}
	sleep 5
	SendInput, {v Up}{Ctrl Up}
	sleep 10
	tooltip,
	Send, ^!{F11} ;this is to deselect any clips that might be selected in the timeline. WAS ctrl alt D. might be unreliable.
	
} ;end of recall Clipboard()




saveToFile(name) {
	;code below does not use any fancy variables. It's a bare string. Unfortunately, I can't find a way to make it work better...
	RunWait, %comspec% /c C:\InsideClipboard.exe /saveclp %name%, c:\
}






loadFromFile(name) {
	; You'll need to change these paths too!
	RunWait, %comspec% /c C:\InsideClipboard.exe /loadclp %name%, c:\
}