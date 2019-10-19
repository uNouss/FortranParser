Extension { #name : #FAMIXEntity }

{ #category : #'*Fortran_OFP' }
FAMIXEntity >> fortranEntities [
	<MSEProperty: #fortranEntities type: #FAMIXNamedEntity opposite: #fortranOwner>	<multivalued>
		<derived>
	<MSEComment: 'Entities defined in the container, if any.'>
	
	^ self privateState
		attributeAt: #fortranEntities
		ifAbsentPut: [ FMMultivalueLink on: self opposite: #fortranOwner: ]
]

{ #category : #'*Fortran_OFP' }
FAMIXEntity >> fortranEntities: aCollectionOfEntities [
	
	^ self privateState
		attributeAt: #fortranEntities
		put: [ aCollectionOfEntities ]
]
