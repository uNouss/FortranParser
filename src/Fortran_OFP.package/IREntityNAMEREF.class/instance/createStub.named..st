converting
createStub: stubClass named: aString
	"by defualt creates a localVariable"
	^(super createStub: stubClass named: aString)
		parentBehaviouralEntity: (parentIR famix) ;
		yourself