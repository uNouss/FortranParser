tests-parsing
testProgramWithStructStmts
	self canParse: 'PROGRAM blah
       if (nbthreads > 1) then
        write(message,''(A,I2,A)'') "Execution // OpenMP avec ",nbthreads," threads."
       else
        write(message,''(A,I2,A)'') "Execution sequentielle sur 1 processeur/coeur."
       endif
 	ENDPROGRAM blah
'.
	self canParse: 'PROGRAM blah
        SELECT CASE(var)
           CASE(const)
              write(stdout,*)  "-------------"
         END SELECT
 	ENDPROGRAM blah
'.
