generated
scanForTokenX7
	[ self recordMatch: #(2).
	self step.
	currentCharacter isLf or: [ currentCharacter isCr ] ] whileTrue.
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(2).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	^ self reportLastMatch