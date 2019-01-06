accessing
entityAtKey: irKey
	^irKey
		ifNil: [ self ]  "reader is the only entity without key"
		ifNotNil: [entities at: irKey]