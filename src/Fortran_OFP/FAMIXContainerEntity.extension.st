Extension { #name : #FAMIXContainerEntity }

{ #category : #'*Fortran_OFP' }
FAMIXContainerEntity >> addUse: aModule [
	self usedModules value add: aModule
		
]

{ #category : #'*Fortran_OFP' }
FAMIXContainerEntity >> addUsing: aModule [
	self usingModules value add: aModule
		
]

{ #category : #'*Fortran_OFP' }
FAMIXContainerEntity >> usedModules [
	^ self privateState 		
		attributeAt: #usedModules
		ifAbsentPut: (
			FMMultiMultivalueLink 
				on: self
				opposite: #usingModules
			 )
]

{ #category : #'*Fortran_OFP' }
FAMIXContainerEntity >> usedModules: aCollection [
	^ self usedModules value: aCollection

]

{ #category : #'*Fortran_OFP' }
FAMIXContainerEntity >> usingModules [
	^ self privateState 		
		attributeAt: #usingModules
		ifAbsentPut: (
			FMMultiMultivalueLink 
				on: self
				opposite: #usedModules
			 )
]

{ #category : #'*Fortran_OFP' }
FAMIXContainerEntity >> usingModules: aCollection [
	^ self usingModules value: aCollection

]
