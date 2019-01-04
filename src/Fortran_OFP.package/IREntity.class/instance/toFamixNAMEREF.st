converting
toFamixNAMEREF
"Curently empty because requires to deal with fortran module importation ...

	| source candidates |
	source := (irModel entityAt: parent) toFamix.
	candidates := (irModel resolveBehavioural: self name in: source).

	(candidates select: #isBehaviouralEntity )
		ifNotEmpty: [
			^FAMIXInvocation new
				signature: self name ;
				sender: source ;
				candidates: (irModel resolveBehavioural: self name in: source) ;
				yourself.
		]
		ifEmpty: [
			^FAMIXEntity new
		]
"