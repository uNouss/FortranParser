converting
toFamixSUBPRGCALL
	| sender invok |
	sender := (irModel entityAt: parent) toFamix.
	invok := FAMIXInvocation new
					"sender: sender ;"
					signature: self name ;
					yourself.
	invok addCandidate: (irModel resolveBehavioural: self name in: sender).
	sender addOutgoingInvocation: invok.
	^ invok
