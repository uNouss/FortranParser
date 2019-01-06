reading
readFromStream: stream
	| reader |
	reader := NeoJSONReader on: stream.
	^ [ stream atEnd ] whileFalse: [ self addEntity: reader next ]