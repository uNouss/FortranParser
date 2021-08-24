Extension { #name : #FAMIXContainerEntity }

{ #category : #'*FortranParser' }
FAMIXContainerEntity >> addUse: aModule [
	self usedModules value add: aModule
		
]

{ #category : #'*FortranParser' }
FAMIXContainerEntity >> addUsing: aModule [
	self usingModules value add: aModule
		
]

{ #category : #'*FortranParser' }
FAMIXContainerEntity >> usedModules [
	^ self privateState 		
		attributeAt: #usedModules
		ifAbsentPut: (
			FMMultiMultivalueLink 
				on: self
				opposite: #usingModules
			 )
]

{ #category : #'*FortranParser' }
FAMIXContainerEntity >> usedModules: aCollection [
	^ self usedModules value: aCollection

]

{ #category : #'*FortranParser' }
FAMIXContainerEntity >> usingModules [
	^ self privateState 		
		attributeAt: #usingModules
		ifAbsentPut: (
			FMMultiMultivalueLink 
				on: self
				opposite: #usedModules
			 )
]

{ #category : #'*FortranParser' }
FAMIXContainerEntity >> usingModules: aCollection [
	^ self usingModules value: aCollection

]
