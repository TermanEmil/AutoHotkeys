#NoEnv						; Recommended for performance and compatibility with future AutoHotkey releases.
							; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input				; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%	; Ensures a consistent starting directory.

; Doc:
; 	!: Alt
;	^: Ctrl
;	#: Windows key
;	+: Shift

; Easier Home/End buttons
!Left::send {Home}
!Right::send {End}
!+Left::send +{Home}
!+Right::send +{End}

; Make Alt just as useful as Ctrl
!c::send ^c
!v::send ^v
!x::send ^x
!z::send ^z
!+z::send ^+z
!s::send ^s
!a::send ^a
!t::send ^t
!+t::send ^+t
!w::send ^w

; Ctrl is just too far, so let's use Alt instead
#Left::send ^{Left}
#Right::send ^{Right}
#+Left::send ^+{Left}
#+Right::send ^+{Right}

#Up::send ^{Up}
#Down::send ^{Down}

; Navigation between tabs (like chrome).
!+a::send +^{Tab}
!+d::send  ^{Tab}


; Test:
; 	Msgbox It's been 1 sec since you release the %A_ThisHotKey%.
; 	SetTimer Test, Off
; Return