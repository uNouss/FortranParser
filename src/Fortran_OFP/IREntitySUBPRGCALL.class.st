Class {
	#name : #IREntitySUBPRGCALL,
	#superclass : #IREntityAssociation,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #accessing }
IREntitySUBPRGCALL >> famixTargetClass [
	^FamixFortranFunction
]

{ #category : #testing }
IREntitySUBPRGCALL >> isKind: aString [
	^ aString = 'SUBPRGCALL'
]

{ #category : #resolving }
IREntitySUBPRGCALL >> resolveTarget: aString [
	^parentIR resolveFunction: aString
]

{ #category : #converting }
IREntitySUBPRGCALL >> toFamixSource: famixSource soleTarget: famixTarget [
	"not used because #toFamixSource:targets accepts multiple targets"
	self shouldNotImplement 
]

{ #category : #converting }
IREntitySUBPRGCALL >> toFamixSource: famixSource targets: famixTargets [

	^FamixFortranInvocation new
			signature: (data at: 'name') ;
			sender: famixSource ;
			candidates: famixTargets ;
			mooseModel: self mooseModel ;
			yourself.
]
