converting
toFamixSource: famixSource targets: famixTargets
	"by default assume there should be exactly one target
		if too many, raise an exception ; if not enough, create a stub"

	famixTargets size > 1
		ifTrue: [ self errorTooManyResolvedFor: self targetName ].

	^ self
		toFamixSource: famixSource
		soleTarget:
			(famixTargets
				ifEmpty: [ self createStub: self famixTargetClass named: self targetName ]
				ifNotEmpty: [ :array | array anyOne ])