resolving
resolveReference: aString
	^(self resolveLocalReference: aString)
		ifEmpty: [ self resolveNonLocalReference: aString ]