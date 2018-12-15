initialization
setUp
	super setUp.
	mdl1 := (self makeFamix: FAMIXModule entity: #() key: 'keyMdl1')
					name: 'mdl1' ;
					isStub: false ;
					yourself.
	mdl2 := (self makeFamix: FAMIXModule entity: #() key: 'keyMdl2')
					name: 'mdl2' ;
					isStub: false ;
					yourself.
	mdl3 := (self makeFamix: FAMIXModule entity: #() key: 'keyMdl3')
					name: 'mdl3' ;
					isStub: false ;
					yourself.

	fct1 := (self makeFamix: FAMIXFunction entity: #() key: 'keyFct1')
					name: 'fct1' ;
					isStub: false ;
					container: mdl1 ;
					yourself.
	fct2 := (self makeFamix: FAMIXFunction entity: #() key: 'keyFct2')
					name: 'fct2' ;
					isStub: false ;
					container: mdl2 ;
					yourself.
	fct3 := (self makeFamix: FAMIXFunction entity: #() key: 'keyFct3')
					name: 'fct1' ;
					isStub: false ;
					container: mdl3 ;
					yourself.
