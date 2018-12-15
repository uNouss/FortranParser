tests
testResolveOtherModule
	self assert: (irModel resolveBehavioural: 'fct2' in: mdl1) size equals: 1.
	self assert: (irModel resolveBehavioural: 'fct2' in: mdl1) anyOne equals: fct2.