as yet unclassified
resolveBehavioural: name in: famixContext
	^famixContext functions
		detect: [ :f | f name = name ]
		ifOne: [ :found | { found } ]
		ifNone: [ self resolveBehavioural: name	]
