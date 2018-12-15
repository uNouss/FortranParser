initialization
setUp
	super setUp.
	mdl := (self makeFamix: FAMIXModule entity: #() key: 'keyMdl')
					name: 'mdl' ;
					isStub: false ;
					yourself.

	fct := (self makeFamix: FAMIXFunction entity: #() key: 'keyFct')
					name: 'fct' ;
					isStub: false ;
					yourself.
