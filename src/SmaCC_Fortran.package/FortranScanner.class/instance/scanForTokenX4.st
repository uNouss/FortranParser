generated
scanForTokenX4
	self recordMatch: #(45).
	self step.
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(192) ].
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch