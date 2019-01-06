converting
toFamix
	super toFamix.
	famix name: Date today ddmmyyyy , '-' , Time now hhmm24.

	self setParents.
	self defineFamixEntities.
	self setFamixParents.
	self referenceFamixEntities
