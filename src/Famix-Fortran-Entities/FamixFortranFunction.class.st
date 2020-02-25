Class {
	#name : #FamixFortranFunction,
	#superclass : #FamixFortranBehaviouralEntity,
	#traits : 'FamixFortranTPossibleStub + FamixTFunction + FamixTInvocable + FamixTModule + FamixTWithParameters + FamixTWithSignature',
	#classTraits : 'FamixFortranTPossibleStub classTrait + FamixTFunction classTrait + FamixTInvocable classTrait + FamixTModule classTrait + FamixTWithParameters classTrait + FamixTWithSignature classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranFunction class >> annotation [

	<FMClass: #Function super: #FamixFortranBehaviouralEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
