generated
scanForTokenX14
	self recordMatch: #(10).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch