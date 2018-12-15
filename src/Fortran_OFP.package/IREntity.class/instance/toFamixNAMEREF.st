converting
toFamixNAMEREF
	| source refered |
	source := (irModel entityAt: parent) toFamix.
	refered := (irModel resolveBehavioural: self name in: source).
	source addOutgoingInvocation: refered.
	"refered := FAMIXInvocation new
					signature: self name ;
					yourself."
	^ refered
