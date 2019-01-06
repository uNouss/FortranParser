converting
toFamixSource: famixSource targets: famixTargets
	"If there is only one target, #toFamixSource:soleTarget: will take care of it
	 It there are various and all are behavioural, can create an invocation
	 If there are no targets, create stub
	 Otherwise, raises an error"
	
	famixTargets ifEmpty: [
		^self toFamixSource: famixSource
				soleTarget: (self createStub: self famixTargetClass named: self targetName) ].
	famixTargets size = 1 ifTrue: [
		^ self toFamixSource: famixSource soleTarget: famixTargets anyOne ].
	(famixTargets allSatisfy: #isBehaviouralEntity) ifTrue: [
		^ FAMIXInvocation new
				signature:  (data at: 'name') ;
				sender: famixSource ;
				candidates: famixTargets ;
				mooseModel: self mooseModel ;
				yourself ].

	self errorTooManyResolvedFor: self targetName