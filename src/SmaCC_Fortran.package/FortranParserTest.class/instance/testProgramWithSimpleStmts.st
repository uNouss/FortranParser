tests-parsing
testProgramWithSimpleStmts
	self canParse: 'PROGRAM blah
      write(stdout,*)  "blah!"
 	ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
      call writeMessage(message,''warning'',''carmel'')
 	ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
       stdout = 6
	ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
        memoireStatiqueLue = read_vmpeak() * 1024**2 ! conversion en octets du résultat en Mo.
	ENDPROGRAM blah
'.
