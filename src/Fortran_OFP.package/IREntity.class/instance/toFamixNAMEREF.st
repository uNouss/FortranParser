converting
toFamixNAMEREF
	| source |
	source := (irModel entityAt: parent) toFamix.
	^FAMIXInvocation new
		signature: self name ;
		sender: source ;
		candidates: (irModel resolveBehavioural: self name in: source) ;
		yourself.
