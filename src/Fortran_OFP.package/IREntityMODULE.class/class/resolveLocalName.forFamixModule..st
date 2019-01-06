resolving
resolveLocalName: aString forFamixModule: module
	"dirty trick to avoid implementing resolve methods in Famix classes"
	^(module functions select: [ :famixFunction | famixFunction name = aString ]) ,
		(module globalVariables select: [ :famixVar | famixVar name = aString ])
