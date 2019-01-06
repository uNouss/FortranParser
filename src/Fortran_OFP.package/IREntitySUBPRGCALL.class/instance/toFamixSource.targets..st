converting
toFamixSource: famixSource targets: famixTargets

	^FAMIXInvocation new
			signature: (data at: 'name') ;
			sender: famixSource ;
			candidates: famixTargets ;
			mooseModel: self mooseModel ;
			yourself.