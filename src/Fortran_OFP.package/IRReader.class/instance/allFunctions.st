accessing
allFunctions
	^entities values
		select: [ :entity | (entity kind = 'FUNCTION') ]
		thenCollect: #toFamix