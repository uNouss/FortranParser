accessing
read
	| stream reader |
	stream := filename asFileReference readStream.
	reader := NeoJSONReader on: stream.
	[  stream atEnd ]
		whileFalse: [ |entityDict key |
			entityDict := reader next.
			entityDict
				at: 'key'
				ifPresent: [:k |  key := k ]
				ifAbsentPut: [
					counter := counter+1.
					key := 'anonymous' , counter asString
				].
			(entityDict at: 'data') keysAndValuesDo: [ :k :v | entityDict at: k put: v ].
			entityDict removeKey: 'data'.
			self addEntity: entityDict withKey: key
		]
	