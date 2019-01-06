converting
setFamixParent
	famix fortranOwner: (parentIR famix).
	parentIR famix class = FAMIXCompilationUnit ifFalse: [
		famix container: (parentIR famix)]