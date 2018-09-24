generated
scan1
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(4).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ currentCharacter >= $] ] ] ] whileTrue.
	^ self reportLastMatch