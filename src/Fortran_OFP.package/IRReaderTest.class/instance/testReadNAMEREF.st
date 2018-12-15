tests
testReadNAMEREF
	irModel readFromStream: (ReadStream on: '{"parent":"entity1","kind":"NAMEREF","data":{"name":"entity2"}}').
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'NAMEREF'.
	self assert: irModel entities values anyOne name equals: 'entity2'.
