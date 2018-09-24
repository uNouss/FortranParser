generated
scanForTokenX13
	self recordMatch: #(18).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch