*Fortran_OFP
fortranOwner
	<MSEProperty: #fortranOwner type: #FAMIXEntity opposite: #fortranEntities>
	<MSEComment:
		'The container defining the function in Fortran. Can be a Module or a CompilationUnit.'>
	<container>
	^ self privateState
		attributeAt: #fortranOwner
		ifAbsentPut: [ nil ]