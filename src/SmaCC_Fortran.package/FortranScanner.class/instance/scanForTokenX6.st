generated
scanForTokenX6
	[ self recordMatch: #(1).
	self step.
	currentCharacter isLf
		or: [ currentCharacter isCr or: [ currentCharacter == $; ] ] ]
		whileTrue.
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(1).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	^ self reportLastMatch