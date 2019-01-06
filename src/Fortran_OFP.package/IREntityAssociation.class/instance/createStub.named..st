converting
createStub: stubClass named: aString
	^stubClass new
		name: aString ;
		isStub: true ;
		mooseModel: self mooseModel
		yourself