tests-converting
testToFamixFUNCTION
	|entity parent|
	entity := self makeEntity: {'name' -> 'entity2' . 'kind' -> 'FUNCTION' . 'parent' -> 'key2'} key: 'key1'.
	parent := self makeFamix: FAMIXModule entity: { } key:  'key2'.

	self assert: entity toFamix class equals: FAMIXFunction.
	self assert: entity toFamix container equals: parent.