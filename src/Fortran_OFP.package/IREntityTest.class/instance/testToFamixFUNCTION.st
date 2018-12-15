tests-converting
testToFamixFUNCTION
	|entity |
	entity := self makeEntity: {'name' -> 'entity2' . 'kind' -> 'FUNCTION' . 'parent' -> 'keyMdl'} key: 'key1'.

	self assert: entity toFamix class equals: FAMIXFunction.
	self assert: entity toFamix container equals: mdl.