converting
setFamixParent
	| parent |
	parent := parentIR famix.
	(parent isBehaviouralEntity)
	ifFalse: [ famix parentScope: parent ]
	ifTrue: [ famix parentBehaviouralEntity: parent ]