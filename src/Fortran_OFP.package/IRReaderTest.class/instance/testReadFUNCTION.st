tests
testReadFUNCTION
	irModel readFromStream: (ReadStream on: '{"parent":"entity1","kind":"FUNCTION","data":{"name":"entity2"}}').
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'FUNCTION'.
	self assert: irModel entities values anyOne name equals: 'entity2'.
