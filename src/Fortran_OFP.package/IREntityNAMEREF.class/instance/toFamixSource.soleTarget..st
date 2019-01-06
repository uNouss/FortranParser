converting
toFamixSource: famixSource soleTarget: famixTarget
	^famixTarget isBehaviouralEntity
		ifTrue: [ FAMIXInvocation new
						signature:  (data at: 'name') ;
						sender: famixSource ;
						candidates: {famixTarget} ;
						mooseModel: self mooseModel ;
						yourself ]
		ifFalse: [ FAMIXAccess new
						accessor: famixSource ;
						variable: famixTarget ;
						mooseModel: self mooseModel ;
						yourself ]