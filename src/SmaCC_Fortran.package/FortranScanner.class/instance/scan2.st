generated
scan2
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(4).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	currentCharacter <= $&
		or: [ (currentCharacter between: $( and: $[)
				or: [ currentCharacter >= $] ] ] ] whileTrue.
	^ self reportLastMatch