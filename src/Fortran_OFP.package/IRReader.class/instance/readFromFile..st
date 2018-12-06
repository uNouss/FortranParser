convertion
readFromFile: filename
	| stream reader |
	stream := filename asFileReference readStream.
	[
		reader := NeoJSONReader on: stream.
		[  stream atEnd ]
			whileFalse: [ self addEntity: reader next ]
	] ensure: [ stream close].
	