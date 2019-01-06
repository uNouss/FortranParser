resolving
resolveFunction: aString
	"look for a function named 'aString' and returns all found (presumably exactly one)"
	^self entities values
		select: [ :ir |
			(ir isKind: 'FUNCTION') and: [
			 ir isNamed: aString ] ]
		thenCollect: #famix