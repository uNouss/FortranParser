*Fortran_OFP
fortranEntities: aCollectionOfEntities
	
	^ self privateState
		attributeAt: #fortranEntities
		put: [ aCollectionOfEntities ]