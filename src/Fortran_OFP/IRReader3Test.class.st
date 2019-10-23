Class {
	#name : #IRReader3Test,
	#superclass : #IRAbstractTest,
	#instVars : [
		'mdl',
		'fct'
	],
	#category : #'Fortran_OFP-Tests'
}

{ #category : #tests }
IRReader3Test >> testSetFamixParentFUNCTION [
	self makeIR: IREntityMODULE key: 'keyMdl'.
	self importIR: '{"key":"keyFct","parent":"keyMdl","kind":"FUNCTION","data":{"name":"fct"}}'.
	
	(irModel entityAtKey: 'keyFct')
		setParentIfNil: irModel ;
		toFamix ;
		setFamixParent.	

	self assert: (irModel entityAtKey: 'keyFct') notNil.
	self
		assert: (irModel entityAtKey: 'keyFct') famix functionOwner
		equals: (irModel entityAtKey: 'keyMdl') famix
]
