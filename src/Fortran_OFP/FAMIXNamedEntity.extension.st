Extension { #name : #FAMIXNamedEntity }

{ #category : #'*Fortran_OFP' }
FAMIXNamedEntity >> fortranOwner [
	<MSEProperty: #fortranOwner type: #FAMIXEntity opposite: #fortranEntities>
	<MSEComment:
		'The container defining the function in Fortran. Can be a Module or a CompilationUnit.'>
	<container>
	^ self privateState
		attributeAt: #fortranOwner
		ifAbsentPut: [ nil ]
]

{ #category : #'*Fortran_OFP' }
FAMIXNamedEntity >> fortranOwner: anEntity [
	^ self privateState 		
		attributeAt: #fortranOwner
		put: anEntity
]
