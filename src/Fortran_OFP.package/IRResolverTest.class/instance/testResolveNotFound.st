tests
testResolveNotFound
	self assert: (irModel resolveBehavioural: 'fctUnknown' in: mdl1) size equals: 0