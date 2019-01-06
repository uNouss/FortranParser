*Fortran_OFP
usedModules
	^ self privateState 		
		attributeAt: #usedModules
		ifAbsentPut: (
			FMMultiMultivalueLink 
				on: self
				opposite: #usingModules
			 )