converting
toFamix
	^famix
		ifNil: [ famix := self perform: ('toFamix' , kind ) asSymbol ]