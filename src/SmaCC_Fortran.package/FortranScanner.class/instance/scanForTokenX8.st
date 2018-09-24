generated
scanForTokenX8
	[ self recordMatch: #(5).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Hh' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(191) ].
	^ self reportLastMatch