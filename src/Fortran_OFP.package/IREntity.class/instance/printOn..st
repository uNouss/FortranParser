printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: Character space.
	aStream nextPutAll: self kind
