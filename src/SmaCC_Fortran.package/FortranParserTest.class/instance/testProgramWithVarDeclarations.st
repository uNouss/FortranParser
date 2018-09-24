tests-parsing
testProgramWithVarDeclarations
	self canParse: 'PROGRAM blah
	INTEGER :: i, j
	ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
	CHARACTER(len=22) :: entierTexte
	ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
	LOGICAL :: continuer
	ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
	real(kind(0d0)) :: tempsCPUinitial, tempsCPUfinal, dtCPU
	ENDPROGRAM blah
'.
