generated
scanForTokenX2
	self recordMatch: #(193).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self step.
					currentCharacter == $"
						ifTrue: [ ^ self recordAndReportMatch: #(7) ].
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $'
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self step.
					currentCharacter == $'
						ifTrue: [ ^ self recordAndReportMatch: #(7) ].
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(193).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch