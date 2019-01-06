accessing
famixClass
	^(parentIR isKind: 'MODULE')
		ifTrue: [ FAMIXGlobalVariable ]
		ifFalse: [ FAMIXLocalVariable ]