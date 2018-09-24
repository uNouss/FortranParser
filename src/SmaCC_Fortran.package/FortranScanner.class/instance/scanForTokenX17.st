generated
scanForTokenX17
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX12 ].
	^ self scanForTokenX16