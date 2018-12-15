accessing
entityAt: key
	key ifNil: [ ^ nil ].
	^ entities at: key