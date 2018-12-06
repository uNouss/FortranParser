lookup by name
resolveBehavioural: name
	^self allFunctions
		detect: [ :f | f name = name ]
		ifNone: [ FAMIXFunction new
						name: name ;
						isStub: true ;
						yourself
		]