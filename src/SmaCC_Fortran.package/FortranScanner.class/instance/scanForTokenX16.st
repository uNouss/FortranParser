generated
scanForTokenX16
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $_
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scanForTokenX8 ].
	('Bb' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX3 ].
	('Oo' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX2 ].
	('Zz' includes: currentCharacter)
		ifTrue:
			[ ^ self scanForTokenX1 ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space ] ])
		ifTrue:
			[ ^ self scanForTokenX11 ].
	(currentCharacter isXMLSeparator or: [ currentCharacter == $; ])
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter isSafeForHTTP
		ifTrue:
			[ self scanForTokenX5 ].
	^ self reportLastMatch