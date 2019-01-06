resolving
resolveLocalReference: aString
	^famix localVariables select: [ :famixVar | famixVar name = aString ]
		