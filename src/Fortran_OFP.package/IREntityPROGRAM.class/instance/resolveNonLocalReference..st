resolving
resolveNonLocalReference: aString
	^self famix usedModules flatCollect: [ :famixModule |
		(famixModule functions select: [ :famixFunction | famixFunction name = aString ]) ,
		(famixModule globalVariables select: [ :famixVar | famixVar name = aString ])
	]