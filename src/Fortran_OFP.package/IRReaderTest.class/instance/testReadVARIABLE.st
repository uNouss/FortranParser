tests
testReadVARIABLE
	irModel readFromStream: (ReadStream on: '{"key":"key1","parent":"entity1","kind":"VARIABLE","data":{"anchorstart":123,"isstub":false,"name":"entity2","anchorfile":"aFile.f90","declaredParam":false,"anchorend":456}}').
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'VARIABLE'.
	self assert: irModel entities values anyOne name equals: 'entity2'.
