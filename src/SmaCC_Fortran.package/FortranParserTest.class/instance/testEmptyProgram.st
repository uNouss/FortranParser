tests-parsing
testEmptyProgram
	self canParse: 'PROGRAM blah
ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
ENDPROGRAM
'.
	self canParse: 'PROGRAM blah
END PROGRAM blah
'.
	self canParse: 'PROGRAM blah
END PROGRAM
'.
	self canParse: 'PROGRAM blah
END
'.