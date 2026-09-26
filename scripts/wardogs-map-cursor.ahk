#Requires AutoHotkey v2.0
#SingleInstance Force

; Wardogs - TBS Tango 2 map cursor fix
; Joystick 1, button 5 (adjust to your Windows joystick mapping)
CoordMode "Mouse", "Screen"
SetTimer WatchMapButton, 20

WatchMapButton() {
    static wasPressed := false
    pressed := GetKeyState("1Joy5")
    if (pressed && !wasPressed) {
        Sleep 300
        MouseMove A_ScreenWidth - 20, 20, 0
    }
    wasPressed := pressed
}

; Optional manual fallback
F8::MouseMove A_ScreenWidth - 20, 20, 0
