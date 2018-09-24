generated
scanForTokenX15
	self recordMatch: #(9).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch