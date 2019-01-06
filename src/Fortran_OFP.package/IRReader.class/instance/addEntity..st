reading
addEntity: json
	"Takes key from irEntity to be used into IRReader.
	 If inexistant, creates one"
	| irkey |
	irkey := json at: 'key' ifAbsentPut: [ 'anonymous' , (counter := counter+1) asString ].
	^entities at: irkey put: (IREntity from: json)
