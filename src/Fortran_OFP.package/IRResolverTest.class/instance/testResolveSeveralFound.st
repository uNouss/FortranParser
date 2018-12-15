tests
testResolveSeveralFound
	self assert: (irModel resolveBehavioural: 'fct1' in: mdl2) size equals: 2