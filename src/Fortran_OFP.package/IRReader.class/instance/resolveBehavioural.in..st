lookup by name
resolveBehavioural: name in: famixContext
	^famixContext functions
		detect: [ :f | f name = name ]
		ifNone: [ self resolveBehavioural: name ]