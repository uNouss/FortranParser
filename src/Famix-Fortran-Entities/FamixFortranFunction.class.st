Class {
	#name : #FamixFortranFunction,
	#superclass : #FamixFortranBehaviouralEntity,
	#traits : 'FamixTFunction + FamixTHasSignature + FamixTInvocable + FamixTModule + FamixTWithParameters',
	#classTraits : 'FamixTFunction classTrait + FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTModule classTrait + FamixTWithParameters classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranFunction class >> annotation [

	<FMClass: #Function super: #FamixFortranBehaviouralEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
