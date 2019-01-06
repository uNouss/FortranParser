converting
setParents
	entities valuesDo: [ :anIr |
		anIr setParentIfNil: self
	]