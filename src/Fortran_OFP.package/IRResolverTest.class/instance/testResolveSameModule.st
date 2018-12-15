tests
testResolveSameModule
	self assert: (irModel resolveBehavioural: 'fct1' in: mdl1) size equals: 1.
	self assert: (irModel resolveBehavioural: 'fct1' in: mdl1) anyOne equals: fct1.
