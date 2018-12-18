as yet unclassified
resolveBehavioural: name
	"look for an entity named 'name' in famixContext.
	 If found, returns a list containing it.
	 If not found, looks in the 'irModel' and returns all candidate entities found"
	^(self entities
		reject: [ :e | e isAnonymous ])
			collect: [ :e | e toFamix ]
			thenSelect: [ :f | f name = name ]