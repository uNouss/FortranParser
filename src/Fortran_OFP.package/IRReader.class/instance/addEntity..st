adding
addEntity: entity
	| key |
	entity at: 'key'
		ifPresent: [:k | key := k ]
		ifAbsentPut: [
			counter := counter+1.
			key := 'anonymous' , counter asString
		].
	^self addEntity: entity at: key
	