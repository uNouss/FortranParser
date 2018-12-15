tests-converting
testToFamixVARIABLE
	| entity |
	entity := self makeEntity: {'name' -> 'var1' . 'kind' -> 'VARIABLE' . 'parent' -> 'keyMdl'} key: 'keyVar1'.
	self assert: entity toFamix class equals: FAMIXGlobalVariable.
	self assert: entity toFamix belongsTo equals: mdl.

	entity := self makeEntity: {'name' -> 'var2' . 'kind' -> 'VARIABLE'} key: 'keyVar2'.
	self assert: entity toFamix class equals: FAMIXGlobalVariable.
	self assert: entity toFamix belongsTo equals: nil.

	entity := self makeEntity: {'name' -> 'var3' . 'kind' -> 'VARIABLE' . 'parent' -> 'keyFct'} key: 'keyVar3'.
	self assert: entity toFamix class equals: FAMIXLocalVariable.
	self assert: entity toFamix parentBehaviouralEntity equals: fct.