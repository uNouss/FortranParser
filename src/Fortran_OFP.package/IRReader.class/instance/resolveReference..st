resolving
resolveReference: aString
	^self entities values
		select: [ :ir |
			(ir isNamed: aString) and: [
			 (ir isKind: 'FUNCTION') or: [
				ir isKind: 'VARIABLE' ] ] ]
		thenCollect: #famix