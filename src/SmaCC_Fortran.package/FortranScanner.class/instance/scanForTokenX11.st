generated
scanForTokenX11
	[ self recordMatch: #(3).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space ] ] ] whileTrue.
	^ self reportLastMatch