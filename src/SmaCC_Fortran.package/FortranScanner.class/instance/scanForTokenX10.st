generated
scanForTokenX10
	self recordMatch: #(26).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	^ self reportLastMatch