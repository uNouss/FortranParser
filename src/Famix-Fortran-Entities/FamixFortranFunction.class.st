Class {
	#name : #FamixFortranFunction,
	#superclass : #FamixFortranBehaviouralEntity,
	#traits : 'FamixFortranTPossibleStub + FamixTDefinedInModule + FamixTFunction + FamixTInvocable + FamixTWithParameters + FamixTWithSignature',
	#classTraits : 'FamixFortranTPossibleStub classTrait + FamixTDefinedInModule classTrait + FamixTFunction classTrait + FamixTInvocable classTrait + FamixTWithParameters classTrait + FamixTWithSignature classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranFunction class >> annotation [

	<FMClass: #Function super: #FamixFortranBehaviouralEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
