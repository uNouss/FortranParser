converting
toFamixCOMPILATION_UNIT
	| mod |
	mod := FAMIXCompilationUnit new
				name: self name ;
				yourself.
	"compilationUnits have no parent"
	^ mod