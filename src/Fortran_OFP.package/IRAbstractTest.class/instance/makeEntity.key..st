private utilities
makeEntity: assocList key: aString
	| entity data |
	entity := IREntity new
						key: aString ;
						irModel: irModel ;
						yourself.
	assocList do: [ :assoc |
		[entity perform: (assoc key , ':') asSymbol with: (assoc value)]
		on: MessageNotUnderstood
		do: [  "ignore" ]
	].
	data := Dictionary new.
	assocList do: [ :assoc | data add: assoc ].
	entity data: data.
	irModel entities at: aString put: entity.
	^ entity
