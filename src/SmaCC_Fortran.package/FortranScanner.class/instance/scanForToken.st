generated
scanForToken
	self step.
	currentCharacter == $!
		ifTrue: [ [ self step.
			(currentCharacter isLf or: [ currentCharacter isCr ])
				ifTrue: [ ^ self scanForTokenX7 ].
			true ] whileTrue ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == $'
		ifTrue: [ ^ self scan2 ].
	^ self scanForTokenX17