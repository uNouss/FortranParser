resolving
resolveLocalReference: aString
	"different than for modules becuse have LOCAL variables"
	^(self famix functions select: [ :famixFct | famixFct name = aString ]) ,
		(self famix localVariables select: [ :famixVar | famixVar name = aString ])
