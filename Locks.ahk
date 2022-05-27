#SingleInstance Force

; how fast should the double tap be in milliseconds
TimeOut := 200

; CapsLock is off by default  * modifier runs this script whether 
*CapsLock::

	If (A_PriorHotkey = A_ThisHotkey
			&& A_TimeSincePriorHotkey < TimeOut)
		
		SetCapsLockState on
	Else
		SetCapsLockState off

Return

; NumLock is off by default
*NumLock::

	If (A_PriorHotkey = A_ThisHotkey
			&& A_TimeSincePriorHotkey < TimeOut)

		SetNumLockState on
	Else
		SetNumLockState off

Return

; ScrollLock is off by default
*ScrollLock::

	If (A_PriorHotkey = A_ThisHotkey
			&& A_TimeSincePriorHotkey < TimeOut)

		SetScrollLockState on
	Else
		SetScrollLockState off

Return

#NoTrayIcon