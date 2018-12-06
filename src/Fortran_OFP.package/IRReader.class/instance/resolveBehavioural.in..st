as yet unclassified
resolveBehavioural: name in: famixContext
	^famixContext functions
		detect: [ :f | f name = name ]
		ifNone: [ FAMIXFunction new
						name: name ;
						isStub: true ;
						yourself
		]