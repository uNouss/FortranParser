instance creation
from: json
	^(Smalltalk classNamed: (self name asString , (json at: 'kind') ))
		new
			fromJSON: json ;
			yourself