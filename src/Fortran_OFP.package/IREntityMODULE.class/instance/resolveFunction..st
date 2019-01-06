resolving
resolveFunction: aString
	^(self famix functions
						select: [ :f | f name = aString ])
		ifEmpty: [ self resolveImportedFunction: aString ]
