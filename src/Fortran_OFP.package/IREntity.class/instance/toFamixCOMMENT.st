converting
toFamixCOMMENT
	| cmt |
	cmt := FAMIXComment new
				content: (data at: 'content') ;
				yourself.

	^cmt