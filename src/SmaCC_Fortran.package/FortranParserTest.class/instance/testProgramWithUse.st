tests-parsing
testProgramWithUse
	self canParse: 'PROGRAM blah
	use blih
ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
	use blih, only: stopErreur, testErreur
ENDPROGRAM blah
'.
