resolving
resolveModule: aString
	"look for a module named 'aString' and returns all found (presumably exactly one)"
	^self entities values
		select: [ :ir |
			(ir isKind: 'MODULE') and: [
			 ir isNamed: aString ] ]
		thenCollect: #famix