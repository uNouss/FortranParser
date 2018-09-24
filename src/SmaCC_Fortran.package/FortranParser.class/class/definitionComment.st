generated
definitionComment
"%prefix Fortran ;
%suffix Node ;
%root program_unit ;
%start main_program module ;
%glr;
%ignorecase;


<ALPHANUMERIC_CHARACTER> : [a-zA-Z0-9_] ;


<T_EOS> 
#      : \;|\r?\n
      : [\;\r\n]+\s*
      ;

<comment>
    : ![^\n\r]*[\r\n]+\s*
    ;

<whitespace>
	: [ \t\f]+
	;


<T_CHAR_CONSTANT>
        : (\'[^\\\']*\')+
        | (\""[^\\\""]*\"")+
        ;


<T_DIGIT_STRING>
	: [0-9]+ 
	;

# R412
<BINARY_CONSTANT>
    : [bB]\'[0-1]+\'
    | [bB]\""[0-1]+\""
    ;

# R413
<OCTAL_CONSTANT>
    : [oO]\'[0-7]+\'
    | [oO]\""[0-7]+\""
    ;

# R414
<HEX_CONSTANT>
    : [zZ]\'[0-9a-fA-F]+\'
    | [zZ]\""[0-9a-fA-F]+\""
    ;


<T_INCLUDE> 
	: INCLUDE
	;


<T_ASTERISK>      : \*   ;
<T_COLON>         : \:   ;
<T_COLON_COLON>   : \:\:  ;
<T_COMMA>         : ,   ;
<T_EQUALS>        : =   ;
<T_EQ_EQ>         : ==  ;
<T_EQ_GT>         : =>  ;
<T_GREATERTHAN>   : >   ;
<T_GREATERTHAN_EQ>: >=  ;
<T_LESSTHAN>      : <   ;
<T_LESSTHAN_EQ>   : <=  ;
<T_LBRACKET>      : \[   ;
<T_LPAREN>        : \(   ;
<T_MINUS>         : -   ;
<T_PERCENT>       : %   ;
<T_PLUS>          : \+   ;
<T_POWER>         : \*\*  ;
<T_SLASH>         : /   ;
<T_SLASH_EQ>      : /=  ;
<T_SLASH_SLASH>   : //  ;
<T_RBRACKET>      : \]   ;
<T_RPAREN>        : \)   ;
<T_UNDERSCORE>    : _   ;


<T_EQ>            : \.EQ\. ;
<T_NE>            : \.NE\. ;
<T_LT>            : \.LT\. ;
<T_LE>            : \.LE\. ;
<T_GT>            : \.GT\. ;
<T_GE>            : \.GE\. ;

<T_TRUE>          : \.TRUE\.  ;
<T_FALSE>         : \.FALSE\. ;

<T_NOT>           : \.NOT\. ;
<T_AND>           : \.AND\. ;
<T_OR>            : \.OR\.  ;
<T_EQV>           : \.EQV\. ;
<T_NEQV>          : \.NEQV\.;

<T_PERIOD_EXPONENT> 
    : \.[0-9]+[EedD][\-\+]?[0-9]+  
    | \.[EedD[\-\+]?[0-9]+  
    | \.[0-9]+
    | [0-9]+[eEdD][\-\+]?[0-9]+ 
    ;

<T_PERIOD>        : \. ;

# begin keyword section (all keywords must appear between
# T_BEGIN_KEYWORDS and T_END_KEYWORDS)

<T_INTEGER>       :       INTEGER       ;
<T_REAL>          :       REAL          ;
<T_COMPLEX>       :       COMPLEX       ;
<T_CHARACTER>     :       CHARACTER     ;
<T_LOGICAL>       :       LOGICAL       ;

<T_ABSTRACT>      :       ABSTRACT      ;
<T_ACQUIRED_LOCK> :       ACQUIRED_LOCK ;   # F2008 token 
<T_ALL>           :       ALL           ;   # F2008 token (also in F2003?) 
<T_ALLOCATABLE>   :       ALLOCATABLE   ;
<T_ALLOCATE>      :       ALLOCATE      ;
<T_ASSIGNMENT>    :       ASSIGNMENT    ;
# ASSIGN statements are a deleted feature.
<T_ASSIGN>        :       ASSIGN        ;
<T_ASSOCIATE>     :       ASSOCIATE     ;
<T_ASYNCHRONOUS>  :       ASYNCHRONOUS  ;
<T_BACKSPACE>     :       BACKSPACE     ;
<T_BLOCK>         :       BLOCK         ;
<T_BLOCKDATA>     :       BLOCKDATA     ;
<T_CALL>          :       CALL          ;
<T_CASE>          :       CASE          ;
<T_CLASS>         :       CLASS         ;
<T_CLOSE>         :       CLOSE         ;
<T_CODIMENSION>   :       CODIMENSION   ;
<T_COMMON>        :       COMMON        ;
<T_CONCURRENT>    :       CONCURRENT    ;
<T_CONTAINS>      :       CONTAINS      ;
<T_CONTIGUOUS>    :       CONTIGUOUS    ;
<T_CONTINUE>      :       CONTINUE      ;
<T_CRITICAL>      :       CRITICAL      ;
<T_CYCLE>         :       CYCLE         ;
<T_DATA>          :       DATA          ;
<T_DEFAULT>       :       DEFAULT       ;
<T_DEALLOCATE>    :       DEALLOCATE    ;
<T_DEFERRED>      :       DEFERRED      ;
<T_DO>            :       DO            ;
<T_DOUBLE>        :       DOUBLE        ;
<T_DOUBLEPRECISION>:      DOUBLEPRECISION ;
<T_DOUBLECOMPLEX>:        DOUBLECOMPLEX ;
<T_ELEMENTAL>     :       ELEMENTAL     ;
<T_ELSE>          :       ELSE          ;
<T_ELSEIF>        :       ELSEIF        ;
<T_ELSEWHERE>     :       ELSEWHERE     ;
<T_ENTRY>         :       ENTRY         ;
<T_ENUM>          :       ENUM          ;
<T_ENUMERATOR>    :       ENUMERATOR    ;
<T_ERROR>         :       ERROR         ;
<T_EQUIVALENCE>   :       EQUIVALENCE   ;
<T_EXIT>          :       EXIT          ;
<T_EXTENDS>       :       EXTENDS       ;
<T_EXTERNAL>      :       EXTERNAL      ;
<T_FILE>          :       FILE          ;
<T_FINAL>         :       FINAL         ;
<T_FLUSH>         :       FLUSH         ;
<T_FORALL>        :       FORALL        ;
<T_FORMAT>        :       FORMAT        ;
<T_FORMATTED>     :       FORMATTED     ;
<T_FUNCTION>      :       FUNCTION      ;
<T_GENERIC>       :       GENERIC       ;
<T_GO>            :       GO            ;
<T_GOTO>          :       GOTO          ;
<T_IF>            :       IF            ;
<T_IMAGES>        :       IMAGES        ;
<T_IMPLICIT>      :       IMPLICIT      ;
<T_IMPORT>        :       IMPORT        ;
<T_IMPURE>        :       IMPURE        ;
<T_IN>            :       IN            ;
<T_INOUT>         :       INOUT         ;
<T_INTENT>        :       INTENT        ;
<T_INTERFACE>     :       INTERFACE     ;
<T_INTRINSIC>     :       INTRINSIC     ;
<T_INQUIRE>       :       INQUIRE       ;
<T_LOCK>          :       LOCK          ;   # F2008 token 
<T_MEMORY>        :       MEMORY        ;
<T_MODULE>        :       MODULE        ;
<T_NAMELIST>      :       NAMELIST      ;
<T_NONE>          :       NONE          ;
<T_NON_INTRINSIC> :       NON_INTRINSIC ;
<T_NON_OVERRIDABLE>:      NON_OVERRIDABLE;
<T_NOPASS>        :       NOPASS        ;
<T_NULLIFY>       :       NULLIFY       ;
<T_ONLY>          :       ONLY          ;
<T_OPEN>          :       OPEN          ;
<T_OPERATOR>      :       OPERATOR      ;
<T_OPTIONAL>      :       OPTIONAL      ;
<T_OUT>           :       OUT           ;
<T_PARAMETER>     :       PARAMETER     ;
<T_PASS>          :       PASS          ;
<T_PAUSE>         :       PAUSE         ;
<T_POINTER>       :       POINTER       ;
<T_PRINT>         :       PRINT         ;
<T_PRECISION>     :       PRECISION     ;
<T_PRIVATE>       :       PRIVATE       ;
<T_PROCEDURE>     :       PROCEDURE     ;
<T_PROGRAM>       :       PROGRAM       ;
<T_PROTECTED>     :       PROTECTED     ;
<T_PUBLIC>        :       PUBLIC        ;
<T_PURE>          :       PURE          ;
<T_READ>          :       READ          ;
<T_RECURSIVE>     :       RECURSIVE     ;
<T_RESULT>        :       RESULT        ;
<T_RETURN>        :       RETURN        ;
<T_REWIND>        :       REWIND        ;
<T_SAVE>          :       SAVE          ;
<T_SELECT>        :       SELECT        ;
<T_SELECTCASE>    :       SELECTCASE    ;
<T_SELECTTYPE>    :       SELECTTYPE    ;
<T_SEQUENCE>      :       SEQUENCE      ;
<T_STOP>          :       STOP          ;
<T_SUBMODULE>     :       SUBMODULE     ;
<T_SUBROUTINE>    :       SUBROUTINE    ;
<T_SYNC>          :       SYNC          ;   # F2008 token 
<T_TARGET>        :       TARGET        ;
<T_THEN>          :       THEN          ;
<T_TO>            :       TO            ;
<T_TYPE>          :       TYPE          ;
<T_UNFORMATTED>   :       UNFORMATTED   ;
<T_UNLOCK>        :       UNLOCK        ;   # F2008 token 
<T_USE>           :       USE           ;
<T_VALUE>         :       VALUE         ;
<T_VOLATILE>      :       VOLATILE      ;
<T_WAIT>          :       WAIT          ;
<T_WHERE>         :       WHERE         ;
<T_WHILE>         :       WHILE         ;
<T_WRITE>         :       WRITE         ;

# begin Rice additions --------------------------
<T_WITHTEAM>      :       WITHTEAM      ;
<T_WITH>          :       WITH          ;
<T_TEAM>          :       TEAM          ;
<T_TOPOLOGY>      :       TOPOLOGY      ;
<T_EVENT>         :       EVENT         ;
<T_LOCKSET>       :       LOCKSET       ;
<T_FINISH>        :       FINISH        ;
<T_SPAWN>         :       SPAWN         ;
<T_COPOINTER>     :       COPOINTER     ;
<T_COTARGET>      :       COTARGET      ;
# end Rice additions ----------------------------

# begin LOPe additions --------------------------
<T_HALO>          :       HALO          ;
<T_COPY_FN>       :       COPY_FN       ;
<T_BOUNDARY>      :       BOUNDARY      ;
<T_CYCLIC>        :       CYCLIC        ;
<T_EXCHANGE_HALO> :       EXCHANGE_HALO ;
# end LOPe additions ----------------------------

# these tokens (without blank characters) are from 3.3.2.2
#

<T_ENDASSOCIATE>  :       ENDASSOCIATE  ;
<T_ENDBLOCK>      :       ENDBLOCK      ;
<T_ENDBLOCKDATA>  :       ENDBLOCKDATA  ;
<T_ENDCRITICAL>   :       ENDCRITICAL   ;
<T_ENDDO>         :       ENDDO         ;
<T_ENDENUM>       :       ENDENUM       ;
<T_ENDFILE>       :       ENDFILE       ;
<T_ENDFORALL>     :       ENDFORALL     ;
<T_ENDFUNCTION>   :       ENDFUNCTION   ;
<T_ENDIF>         :       ENDIF         ;
<T_ENDMODULE>     :       ENDMODULE     ;
<T_ENDINTERFACE>  :       ENDINTERFACE  ;
<T_ENDPROCEDURE>  :       ENDPROCEDURE  ;
<T_ENDPROGRAM>    :       ENDPROGRAM    ;
<T_ENDSELECT>     :       ENDSELECT     ;
<T_ENDSUBMODULE>  :       ENDSUBMODULE  ;
<T_ENDSUBROUTINE> :       ENDSUBROUTINE ;
<T_ENDTYPE>       :       ENDTYPE       ;
<T_ENDWHERE>      :       ENDWHERE      ;

<T_END>   : END
        ;

<T_DIMENSION>     :       DIMENSION     ;

<T_KIND> : KIND ;
<T_LEN>  : LEN ;

<T_BIND> : BIND ;

# End keyword section


#
# Note: Hollerith constants were deleted in F77; Hollerith edit descriptors
# deleted in F95.
#
<T_HOLLERITH> : [0-9]+H 
    ;

# Must come after .EQ. (for example) or will get matched first
# TODO:: this may have to be done in the parser w/ a rule such as:
# T_PERIOD T_IDENT T_PERIOD
<T_DEFINED_OP>
    :    \.[a-zA-Z]+\.
    ;

# # used to catch edit descriptors and other situations
# T_ID_OR_OTHER
# 	:	'ID_OR_OTHER'
# 	;

# extra, context-sensitive terminals that require communication between parser and scanner
# added the underscores so there is no way this could overlap w/ any valid
# idents in Fortran.  we just need this token to be defined so we can 
# create one of them while we're fixing up labeled do stmts.

#<T_LABEL_DO_TERMINAL> : __LABEL_DO_TERMINAL__ ;
#<T_LABEL_DO_TERMINAL_INSERTED> : __T_LABEL_DO_TERMINAL_INSERTED__ ;

#<T_DATA_EDIT_DESC> : __T_DATA_EDIT_DESC__ ;
#<T_CONTROL_EDIT_DESC> : __T_CONTROL_EDIT_DESC__ ;
#<T_CHAR_STRING_EDIT_DESC> : __T_CHAR_STRING_EDIT_DESC__ ;

#<T_STMT_FUNCTION> : STMT_FUNCTION ;

#<T_ASSIGNMENT_STMT> : __T_ASSIGNMENT_STMT__ ;
#<T_PTR_ASSIGNMENT_STMT> : __T_PTR_ASSIGNMENT_STMT__ ;
#<T_ARITHMETIC_IF_STMT> : __T_ARITHMETIC_IF_STMT__ ;
#<T_ALLOCATE_STMT_1> : __T_ALLOCATE_STMT_1__ ;
#<T_WHERE_STMT> : __T_WHERE_STMT__ ;
#<T_IF_STMT> : __T_IF_STMT__ ;
#<T_FORALL_STMT> : __T_FORALL_STMT__ ;
#<T_WHERE_CONSTRUCT_STMT> : __T_WHERE_CONSTRUCT_STMT__ ;
#<T_FORALL_CONSTRUCT_STMT> : __T_FORALL_CONSTRUCT_STMT__ ;
#<T_INQUIRE_STMT_2> : __T_INQUIRE_STMT_2__ ;
# text for the real constant will be set when a token of this type is 
# created by the prepass.
#<T_REAL_CONSTANT> : __T_REAL_CONSTANT__ ; 

#<T_INCLUDE_NAME>: __T_INCLUDE_NAME__ ;
#<T_EOF>: __T_EOF__ ;

# R304
<T_IDENT>
	: [a-zA-Z]<ALPHANUMERIC_CHARACTER>*
	;

#
# Used in format-item processing.  This token is replaced by an edit
# descriptor in the prepass (by FortranLexicalPrepass).  It doesn't really
# matter what this token contains because the format string is parsed
# as a string in the lexical prepass.  The goal is to keep the lexer from
# bombing on strings like 2es15.6 and also not interfer with real literal
# constants and Holleriths.
#
<T_EDIT_DESC_MISC>
   :   [0-9]+([eE]([nN]|[sS]))<ALPHANUMERIC_CHARACTER>*
   ;

# Need a catch-all rule because of fixed-form being allowed to use any 
#  character in column 6 to designate a continuation.
<MISC_CHAR> : [^\n\r] ;



#
# NOTES
# 
# R303, R406, R417, R427, R428 underscore - added _ to rule (what happened 
# to it?) * R410 sign - had '?' rather than '-'
# R1209 import-stmt: MISSING a ]
# 
# check comments regarding deleted for correctness
# 
# Replace all occurrences of <T_EOS> with end_of_stmt rule call so there is 
# a way to look ahead at the next token to see if it belongs to the same 
# input stream as the current one.  This serves as a way to detect that an 
# include statement had occurred during the lexical phase.
# 
# TODO add opt_label to all statements...
# finished: continue-stmt, end-do-stmt
# 
#


# added opt_label to any rule for a statement (*_stmt, for the most 
# part) because the draft says a label can exist with any statement.  
# questions are:
# - what about constructs such as if/else; where can labels all occur?
# - or the masked_elsewhere_stmt rule...


#parser grammar FortranParser08;

# options{...}

# If the package (in header) is defined (see below), antlr v3.2 will
# emit an error.  However, the error can be safely ignored and
# rerunning make will build the OFP jar file correctly.
#
# @header{...}

# @members{...}


#*
# Section/Clause 1: Overview
#


#
# Section/Clause 2: Fortran concepts
#


#
# Got rid of the following rules: 
# program
# program_unit
# external_subprogram
# 
# this was done because Main() should now handle the top level rules
# to try and reduce the amount of backtracking that must be done!
# --Rickett, 12.07.06
# 
# for some reason, leaving these three rules in, even though main() 
# does NOT call them, prevents the parser from failing on the tests:
# main_program.f03
# note_6.24.f03
# it appears to be something with the star_program_unit part of the 
# program rule.  --12.07.06
# --resolved: there's a difference in the code that is generated for 
# the end_of_stmt rule if these three rules are in there.
# to get around this, i modified the end_of_stmt rule.  
# see it for more details.  --12.11.06
# 
#

#
# R201-F08 program
# is program-unit 
# [ program-unit ] ... 
#

######
# R201-F08
#
# Removed from grammar and called explicitly
#


#
# R202-F08 program-unit
# is main-program
# or external-subprogram
# or module
# or submodule     # NEW_TO_2008
# or block-data
#

######
# R202-F08
program_unit
   : main_program
#   | external_subprogram
   | module
   | submodule     # NEW_TO_2008
   | block_data
    ;
#
# Removed from grammar and called explicitly
#


#
# R203-F08 external-subprogram
# is function-subprogram 
# or subroutine-subprogram
#

######
# R203-F08
#
# Removed from grammar and called explicitly
#

#
# R1101-F08 main-program
# is [ program-stmt ]
# [ specification-part ]
# [ execution-part ]
# [ internal-subprogram-part ]
# end-program-stmt
#

######
# R1101-F08
#
# We need a start rule as a entry point in the parser
#
# specification_part made non-optional to remove END ambiguity
#   (as can be empty)
#
main_program
# init{...}
   :   opt_program_stmt
       specification_part
       opt_execution_part
       opt_internal_subprogram_part
       end_program_stmt
         
   ;

# added rule so could have one rule for main() to call for attempting
# to match a function subprogram.  the original rule, 
# external_subprogram, has opt_prefix for a function_subprogram.
ext_function_subprogram
# init{...}
    :   opt_prefix function_subprogram
			
    ;

######
# R204
#
# This rule is overridden in FortranParserExtras grammar
#
# ERR_CHK 204 see ERR_CHK 207, implicit_part? removed (was after star_import_stmt)
specification_part
# init{...}
	:	star_use_stmt
		star_import_stmt
		implicit_part_recursion
		star_declaration_construct
			
	;

# R205-F08 
# R206-F08 combined
implicit_part_recursion
#   : =>   (opt_label <T_IMPLICIT>)  
   : implicit_stmt   implicit_part_recursion
#   | =>   (opt_label <T_PARAMETER>) 
   | parameter_stmt  implicit_part_recursion
#   | =>   (opt_label <T_FORMAT>)    
   | format_stmt     implicit_part_recursion
#   | =>   (opt_label <T_ENTRY>)     
   | entry_stmt      implicit_part_recursion
   |   # empty
   ;

#
# R207-F08 declaration-construct
# is derived-type-def
# or entry-stmt
# or enum-def                      # NEW_NAME_2008 (was enum-alias-def)
# or format-stmt
# or interface-block
# or parameter-stmt
# or procedure-declaration-stmt
# or other-specification-stmt      # NEW_NAME_2008 (was specification-stmt)
# or type-declaration-stmt
# or stmt-function-stmt
#

######
# R207-F08
#
declaration_construct
# after{...}
   :   derived_type_def
   |   entry_stmt
   |   enum_def
   |   format_stmt
   |   interface_block
   |   parameter_stmt
   |   procedure_declaration_stmt
   |   other_specification_stmt
   |   type_declaration_stmt
   |   stmt_function_stmt
   ;

# R208
execution_part
# after{...}
	:	executable_construct
		star_execution_part_construct
	;

# R209
execution_part_construct
# after{...}
	:	executable_construct  
	|	format_stmt
	|	entry_stmt
	|	data_stmt
	;

#
# R210-F08 internal-subprogram-part
# is contains-stmt
# [ internal-subprogram ] ...  # DIFFERENT_2008 (can have contains only)
#

######
# R210-F08
#
internal_subprogram_part
# init{...}
   :   contains_stmt
       star_internal_subprogram
           
   ;

# R211
# modified to factor optional prefix
internal_subprogram
# after{...}
	:	opt_prefix function_subprogram
	|	subroutine_subprogram
	;

#
# R212-F08 other-specification-stmt   # NEW_NAME_2008 (was specification-stmt)
# is access-stmt
# or allocatable-stmt
# or asynchronous-stmt
# or bind-stmt
# or codimension-stmt              # NEW_TO_2008
# or common-stmt
# or data-stmt
# or dimension-stmt
# or equivalence-stmt
# or external-stmt
# or intent-stmt
# or intrinsic-stmt
# or namelist-stmt
# or optional-stmt
# or pointer-stmt
# or protected-stmt
# or save-stmt
# or target-stmt
# or volatile-stmt
# or value-stmt
#

######
# R212-F08
#
other_specification_stmt
# after{...}
   :   access_stmt
   |   allocatable_stmt
   |   asynchronous_stmt
   |   bind_stmt
   |   codimension_stmt                # NEW_TO_2008
   |   common_stmt
   |   data_stmt
   |   dimension_stmt
   |   equivalence_stmt
   |   external_stmt
   |   intent_stmt
   |   intrinsic_stmt
   |   namelist_stmt
   |   optional_stmt
   |   pointer_stmt
   |   protected_stmt
   |   save_stmt
   |   target_stmt
   |   volatile_stmt
   |   value_stmt
   |   other_spec_stmt_extension
   ;

# language extension point
other_spec_stmt_extension : <T_NO_LANGUAGE_EXTENSION> ;

#
# R213-F08 executable-construct
# is action-stmt
# or associate-construct
# or block-construct               # NEW_TO_2008
# or case-construct
# or critical-construct            # NEW_TO_2008
# or do-construct
# or forall-construct
# or if-construct
# or select-type-construct
# or where-construct
#

######
# R213-F03
#
# This rule is overridden in FortranParserExtras grammar
#
executable_construct
# after{...}
   :   action_stmt
   |   associate_construct
   |   block_construct                 # NEW_TO_2008
   |   case_construct
   |   critical_construct              # NEW_TO_2008
   |   do_construct
   |   forall_construct
   |   if_construct
   |   select_type_construct
   |   where_construct
   ;


#
# R214-F08 action-stmt
# is allocate-stmt
# or assignment-stmt
# or backspace-stmt
# or call-stmt
# or close-stmt
# or continue-stmt
# or cycle-stmt
# or deallocate-stmt
# or end-function-stmt
# or end-mp-subprogram-stmt        # NEW_TO_2008
# or end-program-stmt
# or end-subroutine-stmt
# or endfile-stmt
# or errorstop-stmt                # NEW_TO_2008
# or exit-stmt
# or flush-stmt
# or forall-stmt
# or goto-stmt
# or if-stmt
# or inquire-stmt
# or lock-stmt                     # NEW_TO_2008
# or nullify-stmt
# or open-stmt
# or pointer-assignment-stmt
# or print-stmt
# or read-stmt
# or return-stmt
# or rewind-stmt
# or stop-stmt
# or sync-all-stmt                 # NEW_TO_2008
# or sync-images-stmt              # NEW_TO_2008
# or sync-memory-stmt              # NEW_TO_2008
# or unlock-stmt                   # NEW_TO_2008
# or wait-stmt
# or where-stmt
# or write-stmt
# or arithmetic-if-stmt
# or computed-goto-stmt
#

######
# R214
#
# This rule is overridden in FortranParserExtras grammar
#
# C201 (R208) An execution-part shall not contain an end-function-stmt, end-program-stmt, or
#             end-subroutine-stmt.  (But they can be in a branch target statement, which
#             is not in the grammar, so the end-xxx-stmts deleted.)
# TODO continue-stmt is ambiguous with same in end-do, check for label and if
# label matches do-stmt label, then match end-do there
# the original generated rules do not allow the label, so add opt_label
action_stmt
# after{...}
# Removed backtracking by inserting extra tokens in the stream by the 
# prepass that signals whether we have an assignment-stmt, a 
# pointer-assignment-stmt, or an arithmetic if.  this approach may work for
# other parts of backtracking also.  however, need to see if there is a way
# to define tokens w/o defining them in the lexer so that the lexer doesn't
# have to add them to it's parsing..  02.05.07
	:	allocate_stmt
	|	assignment_stmt
	|	backspace_stmt
	|	call_stmt
	|	close_stmt
	|	continue_stmt
	|	cycle_stmt
	|	deallocate_stmt
	|	endfile_stmt
   |   errorstop_stmt                # NEW_TO_2008
	|	exit_stmt
	|	flush_stmt
	|	forall_stmt
	|	goto_stmt
	|	if_stmt
    |   inquire_stmt  
   |   lock_stmt                     # NEW_TO_2008
	|	nullify_stmt
	|	open_stmt
	|	pointer_assignment_stmt
	|	print_stmt
	|	read_stmt
	|	return_stmt
	|	rewind_stmt
	|	stop_stmt
   |   sync_all_stmt                 # NEW_TO_2008
   |   sync_images_stmt              # NEW_TO_2008
   |   sync_memory_stmt              # NEW_TO_2008
   |   unlock_stmt                   # NEW_TO_2008
	|	wait_stmt
	|	where_stmt
	|	write_stmt
	|	arithmetic_if_stmt
	|	computed_goto_stmt
    |   assign_stmt 
    |   assigned_goto_stmt
    |   pause_stmt
	;

# R215
keyword #returns [Token tk]
# after{...}
	:	name 
	;

#*
# Section/Clause 3: Lexical tokens and source form
#

# R301 character not used

# R302 alphanumeric_character converted to fragment

# R303 underscore inlined

# R304
name #returns [Token tk]
	:	<T_IDENT>		
	;

# R305
# ERR_CHK 305 named_constant replaced by <T_IDENT> 
constant
	:	literal_constant	
	|	<T_IDENT>				
	;

scalar_constant
# after{...}
    :    constant
    ;

# R306
literal_constant
# after{...}
   :   int_literal_constant
   |   real_literal_constant
   |   complex_literal_constant
   |   logical_literal_constant
   |   char_literal_constant
   |   boz_literal_constant
   |   hollerith_literal_constant  # deleted in F77
   ;

# R307 named_constant was name inlined as <T_IDENT>

# R308
# C302 R308 int_constant shall be of type integer
# inlined integer portion of constant
int_constant
	:	int_literal_constant	
	|	<T_IDENT>					
	;

# R309
# C303 R309 char_constant shall be of type character
# inlined character portion of constant
char_constant
	:	char_literal_constant	
	|	<T_IDENT>					
	;

# R310
intrinsic_operator #returns [Token tk]
# after{...}
	:	power_op	
	|	mult_op		
	|	add_op		
	|	concat_op	
	|	rel_op		
	|	not_op		
	|	and_op		
	|	or_op		
	|	equiv_op	
	;

# R311
# removed defined_unary_op or defined_binary_op ambiguity with <T_DEFINED_OP>
defined_operator
	:	<T_DEFINED_OP>			
            
	|	extended_intrinsic_op	
            
	;

# R312
extended_intrinsic_op #returns [Token tk]
# after{...}
	:	intrinsic_operator	
	;

# R313
# ERR_CHK 313 five characters or less
label #returns [Token tk]
    : <T_DIGIT_STRING> 
    ;

# action.label called here to store label in action class
label_list
# init{...}
    :  		
		label  
            star_T_COMMA__label
      		
    ;


#*
# Section/Clause 4: Types
#


# R401
type_spec
# after{...}
	:	intrinsic_type_spec
	|	derived_type_spec
	;

# R402
# ERR_CHK 402 scalar_int_expr replaced by expr
type_param_value
	:	expr		
	|	<T_ASTERISK>	
	|	<T_COLON> 	
	;

# inlined scalar_int_expr C101 shall be a scalar

# inlined scalar_expr

# R403
# Nonstandard Extension: source BLAS
#	|	<T_DOUBLE> <T_COMPLEX>
#	|	<T_DOUBLECOMPLEX>
intrinsic_type_spec
# init{...}
	:	<T_INTEGER> opt_kind_selector
			
	|	<T_REAL> opt_kind_selector
			
	|	<T_DOUBLE> <T_PRECISION>
			
	|	<T_DOUBLEPRECISION>
			
	|	<T_COMPLEX> opt_kind_selector
			
	|	<T_DOUBLE> <T_COMPLEX>
			
	|	<T_DOUBLECOMPLEX>
			
	|	<T_CHARACTER> opt_char_selector
			
	|	<T_LOGICAL> opt_kind_selector
			
	;

# R404
# ERR_CHK 404 scalar_int_initialization_expr replaced by expr
# Nonstandard extension: source common practice
#	| <T_ASTERISK> <T_DIGIT_STRING>  # e.g., star_COMPLEX16	
# TODO - check to see if second alternative is where it should go
kind_selector
# init{...}
    : <T_LPAREN> opt_T_KIND__T_EQUALS expr <T_RPAREN>
    	 
    | <T_ASTERISK> <T_DIGIT_STRING>
    		
    ;

# R405
signed_int_literal_constant
# init{...} 
	:	opt_T_PLUS_or_T_MINUS
		int_literal_constant
			
	;

# R406
int_literal_constant
# init{...} 
	:	<T_DIGIT_STRING> opt_T_UNDERSCORE__kind_param
			
	;

# R407
# <T_IDENT> inlined for scalar_int_constant_name
kind_param #returns [Token tk]
	:	<T_DIGIT_STRING> 
            
	|	<T_IDENT> 
            
	;

# R408 signed_digit_string inlined

# R409 digit_string converted to fragment

# R410 sign inlined

# R411
boz_literal_constant
	:	<BINARY_CONSTANT> 
	|	<OCTAL_CONSTANT> 
	|	<HEX_CONSTANT>
	;

# R412 binary-constant converted to terminal

# R413 octal_constant converted to terminal

# R414 hex_constant converted to terminal

# R415 hex_digit inlined

# R416
signed_real_literal_constant
# init{...} 
	:	opt_T_PLUS_or_T_MINUS
		real_literal_constant
			
	;

# R417 modified to use terminal
# Grammar Modified slightly to prevent problems with input such as: 
# if(1.and.1) then ... 
real_literal_constant
# init{...} 
#		WARNING must parse <T_REAL_CONSTANT> in action (look for D)
    :   <T_REAL_CONSTANT> opt_T_UNDERSCORE__kind_param 
            
        
    ;

# R418 significand converted to fragment

# R419 exponent_letter inlined in new Exponent

# R420 exponent inlined in new Exponent

# R421
complex_literal_constant
# after{...}
	:	<T_LPAREN> real_part <T_COMMA> imag_part <T_RPAREN>
	;

# R422
# ERR_CHK 422 named_constant replaced by <T_IDENT>
real_part
	:	signed_int_literal_constant	 
            
	|	signed_real_literal_constant 
            
	|	<T_IDENT>					     
            
	;

# R423
# ERR_CHK 423 named_constant replaced by <T_IDENT>
imag_part
	:	signed_int_literal_constant		
            
	|	signed_real_literal_constant	
            
	|	<T_IDENT>							
            
	;

# R424
# ERR_CHK 424a scalar_int_initialization_expr replaced by expr
# ERR_CHK 424b <T_KIND>, if type_param_value, must be a 
# scalar_int_initialization_expr
# ERR_CHK 424c <T_KIND> and <T_LEN> cannot both be specified
char_selector
# init{...}
   # length-selector without type-param-value
   :   <T_ASTERISK> char_length opt_T_COMMA
          
   # type-param-value but no 
   |   <T_LPAREN> type_param_value
          opt_T_COMMA__opt_T_KIND__T_EQUALS__expr
       <T_RPAREN>
          
   # type-param-value with 
   |   <T_LPAREN> <T_LEN> <T_EQUALS> type_param_value
          opt_for_char_selector
       <T_RPAREN>
          
   #  first
   |   <T_LPAREN> <T_KIND> <T_EQUALS> expr
          opt_T_COMMA__opt_T_LEN__T_EQUALS__type_param_value
       <T_RPAREN>
          
   ;

# R425
length_selector
# init{...}
   :   <T_LPAREN> opt_T_LEN__T_EQUALS type_param_value <T_RPAREN>
          
   |   <T_ASTERISK> char_length opt_T_COMMA
          
   ; 

# R426
char_length
   :   <T_LPAREN> type_param_value <T_RPAREN>   
   |   scalar_int_literal_constant          
   ;

scalar_int_literal_constant
# after{...}
   :   int_literal_constant
   ;

# R427
# char_literal_constant
# # options {2;}
# 	:	<T_DIGIT_STRING> <T_UNDERSCORE> <T_CHAR_CONSTANT>
#         # removed the <T_UNDERSCORE> because underscores are valid characters 
#         # for identifiers, which means the lexer would match the <T_IDENT> and 
#         # <T_UNDERSCORE> as one token (<T_IDENT>).
# 	|	<T_IDENT> <T_CHAR_CONSTANT>
# 	|	<T_CHAR_CONSTANT>
#     ;
char_literal_constant
   :   <T_DIGIT_STRING> <T_UNDERSCORE> <T_CHAR_CONSTANT>
          
       # removed the <T_UNDERSCORE> because underscores are valid characters 
       # for identifiers, which means the lexer would match the <T_IDENT> and 
       # <T_UNDERSCORE> as one token (<T_IDENT>).
   |   <T_IDENT> <T_CHAR_CONSTANT>
          
   |   <T_CHAR_CONSTANT>
          
   ;

#
# Note: Hollerith constants were deleted in F77; Hollerith edit descriptors
# deleted in F95.
#
hollerith_literal_constant
    :   <T_HOLLERITH>
            
    ;

# R428
logical_literal_constant
# init{...} 
	:	<T_TRUE> opt_T_UNDERSCORE__kind_param
			
	|	<T_FALSE> opt_T_UNDERSCORE__kind_param
			
	;

# R429
#  ( component_part )? inlined as ( component_def_stmt )*
derived_type_def
# after{...}
	:	derived_type_stmt
        # matches <T_INTEGER> possibilities in component_def_stmt
		type_param_or_comp_def_stmt_list  
		star_private_or_sequence
	  
		star_component_def_stmt
		opt_type_bound_procedure_part
		end_type_stmt
	;

# Includes:
#    ( type_param_def_stmt)*
#    ( component_def_stmt )* if starts with <T_INTEGER> (could be a parse error)
# REMOVED <T_INTEGER> junk (see statement above) with 1
# TODO this must be tested can we get rid of this???
type_param_or_comp_def_stmt_list
# after{...}
#/options {1;}
#	:	(<T_INTEGER>) => opt_kind_selector <T_COMMA> type_param_or_comp_def_stmt
#			type_param_or_comp_def_stmt_list
	:	opt_kind_selector <T_COMMA> type_param_or_comp_def_stmt
			type_param_or_comp_def_stmt_list
	|
		
	;

type_param_or_comp_def_stmt
	:	type_param_attr_spec <T_COLON_COLON> type_param_decl_list end_of_stmt 
            # TODO: See if this is reachable now that type_param_attr_spec is 
            # tokenized <T_KIND> or <T_LEN>. See R435
			
	|	component_attr_spec_list <T_COLON_COLON> component_decl_list end_of_stmt 
            # See R440
			
	;

# R430
# generic_name_list substituted for type_param_name_list
derived_type_stmt
# init{...}
# after{...}
	:	opt_label <T_TYPE>
		opt_for_derived_type_stmt <T_IDENT>
		    opt_T_LPAREN__generic_name_list__T_RPAREN
            end_of_stmt
			
	;

type_attr_spec_list
# init{...}
	:		
		type_attr_spec  star_T_COMMA__type_attr_spec
			
	;

generic_name_list
# init{...}
	:		
		<T_IDENT>
			 star_T_COMMA__T_IDENT
			
	;

# R431
# <T_IDENT> inlined for parent_type_name
type_attr_spec
	:	access_spec
			
	|	<T_EXTENDS> <T_LPAREN> <T_IDENT> <T_RPAREN>
			
	|	<T_ABSTRACT>
			
	|	<T_BIND> <T_LPAREN> <T_IDENT>  <T_RPAREN>
			
	;

# R432
private_or_sequence
# after{...}
    :   private_components_stmt
    |   sequence_stmt
    ;

# R433
end_type_stmt
# init{...} 
# after{...}
	: opt_label <T_END> <T_TYPE> opt_T_IDENT 
        end_of_stmt
		
	| opt_label <T_ENDTYPE> opt_T_IDENT 
        end_of_stmt
		
	;

# R434
sequence_stmt
# init{...} 
# after{...}
	:	opt_label <T_SEQUENCE> end_of_stmt
			
	;

# R435 type_param_def_stmt inlined in type_param_or_comp_def_stmt_list

# R436
# ERR_CHK 436 scalar_int_initialization_expr replaced by expr
# <T_IDENT> inlined for type_param_name
type_param_decl
# init{...}
    :    <T_IDENT> opt_T_EQUALS__expr
			
    ;

type_param_decl_list
# init{...}
	:		
        type_param_decl  star_T_COMMA__type_param_decl
			
    ;

#
# R437-F08 component-attr-spec
# is access-spec
# or ALLOCATABLE
# or CODIMENSION lbracket coarray-spec rbracket  # NEW_TO_2008
# or CONTIGUOUS                                  # NEW_TO_2008
# or DIMENSION ( component-array-spec)
# or POINTER
#

######
# R437-F08, R441-F03
#
# TODO it appears there is a bug in the standard for a parameterized type,
#      it needs to accept KIND, LEN keywords, see NOTE 4.24 and 4.25
component_attr_spec
   :   access_spec
          
   |   <T_ALLOCATABLE>
          
   |   <T_CODIMENSION> <T_LBRACKET> coarray_spec <T_RBRACKET>          # NEW_TO_2008 
          
   |   <T_CONTIGUOUS>                                              # NEW_TO_2008 
          
   |   <T_DIMENSION> <T_LPAREN> component_array_spec <T_RPAREN>
          
   |   <T_POINTER>
          
   |   component_attr_spec_extension
    # are <T_KIND> and <T_LEN> correct?
#   |   <T_KIND>
#          {action.component_attr_spec($<T_KIND>, 
#                  IActionEnums.ComponentAttrSpec_kind);}
#   |   <T_LEN>
#          {action.component_attr_spec($<T_LEN>, 
#                  IActionEnums.ComponentAttrSpec_len);}
  ;
  
# language extension point
component_attr_spec_extension : <T_NO_LANGUAGE_EXTENSION> ;

component_attr_spec_list
# init{...}
    :		
        component_attr_spec star_T_COMMA__component_attr_spec
    		
    ;

# R437
# ADD isKind boolean.
type_param_attr_spec
	: 	<T_IDENT>  
            
	;

# R438 component_part inlined as ( component_def_stmt )* in R429

# R439
component_def_stmt
# after{...}
	:	data_component_def_stmt
			
	|	proc_component_def_stmt
			
	;


# R440
data_component_def_stmt
# init{...}
# after{...}
    :    opt_label declaration_type_spec 
            opt_for_data_component_def_stmt component_decl_list end_of_stmt
    ;


#
# R438-F08 component-decl
# is component-name [ ( component-array-spec) ]
# [ lbracket coarray-spec rbracket ]  # NEW_TO_2008
# [ * char-length ] [ component-initialization ]
#

######
# R438-F08, R442-F03
#
# <T_IDENT> inlined as component_name
component_decl
# init{...}
   :   <T_IDENT> opt_T_LPAREN__component_array_spec__T_RPAREN
               opt_T_LBRACKET__coarray_spec__T_RBRACKET
               opt_T_ASTERISK__char_length 
               opt_component_initialization
           
   ;

component_decl_list
# init{...}
   :       
       component_decl  star_T_COMMA__component_decl
           
   ;

# R443
component_array_spec
	:	explicit_shape_spec_list
			
	|	deferred_shape_spec_list
			
	;

# deferred_shape_spec replaced by <T_COLON>
deferred_shape_spec_list
# init{...}
    :    	
        <T_COLON>  star_T_COMMA__T_COLON
        	
    ;

# R444
# R447-F2008 can also > initial_data_target, see NOTE 4.40 in J3/07-007
# ERR_CHK 444 initialization_expr replaced by expr
component_initialization
# after{...}
	:	<T_EQUALS> expr
	|	<T_EQ_GT> null_init
	;

# R445
proc_component_def_stmt
# init{...}
# after{...}
	:	opt_label <T_PROCEDURE> <T_LPAREN> 
            opt_proc_interface <T_RPAREN> <T_COMMA>
		    proc_component_attr_spec_list <T_COLON_COLON> proc_decl_list 
            end_of_stmt
				
	;

# R446
# <T_IDENT> inlined for arg_name
proc_component_attr_spec
# init{...}
    :    <T_POINTER>
			
    |    <T_PASS> opt_T_LPAREN__T_IDENT__T_RPAREN
			
    |    <T_NOPASS>
			
    |    access_spec
			
    ;

proc_component_attr_spec_list
# init{...}
    :    	
        proc_component_attr_spec  
            star_T_COMMA__proc_component_attr_spec
        	
    ;

# R447
private_components_stmt
# init{...}
# after{...}
	:	opt_label <T_PRIVATE> end_of_stmt
			
	;

# R448
type_bound_procedure_part
# init{...}
   :   contains_stmt
       opt_binding_private_stmt
       proc_binding_stmt star_proc_binding_stmt
           
   ;

# R449
binding_private_stmt
# init{...}
# after{...}
	:	opt_label <T_PRIVATE> end_of_stmt
			
	;

# R450
proc_binding_stmt
# init{...}
# after{...}
	:	opt_label specific_binding end_of_stmt
			
	|	opt_label generic_binding end_of_stmt
			
	|	opt_label final_binding end_of_stmt
			
	;

# R451
# <T_IDENT> inlined for interface_name, binding_name and procedure_name
specific_binding
# init{...} 
    :   <T_PROCEDURE> opt_T_LPAREN__T_IDENT__T_RPAREN
            opt_for_specific_binding
            <T_IDENT>  
            opt_T_EQ_GT__T_IDENT
			
    ;

# R452
# generic_name_list substituted for binding_name_list
generic_binding
# init{...}
    :    <T_GENERIC> opt_T_COMMA__access_spec <T_COLON_COLON> 
            generic_spec <T_EQ_GT> generic_name_list
			
    ;

# R453
# <T_IDENT> inlined for arg_name
binding_attr
# init{...}
    : <T_PASS> opt_T_LPAREN__T_IDENT__T_RPAREN
        
    | <T_NOPASS>			
        
    | <T_NON_OVERRIDABLE>	
        
    | <T_DEFERRED>		
        
    | access_spec		
        
    ;

binding_attr_list
# init{...}
    :		
        binding_attr  star_T_COMMA__binding_attr
    		
    ;

# R454
# generic_name_list substituted for final_subroutine_name_list
final_binding
	:	<T_FINAL> opt_T_COLON_COLON generic_name_list 
            
	;

# R455
derived_type_spec
# init{...}
    : <T_IDENT> opt_T_LPAREN__type_param_spec_list__T_RPAREN
    	
    ;

# R456
type_param_spec
# init{...}
    : opt_keyword__T_EQUALS type_param_value
			
    ;

type_param_spec_list
# init{...}
    :    	 
        type_param_spec star_T_COMMA__type_param_spec
        	 
    ;

# R457
# inlined derived_type_spec (R662) to remove ambiguity using backtracking
# ERR_CHK R457 
# If any of the type-param-specs in the list are an '*' or ':', the 
# component-spec-list is required.
# the second alternative to the original rule for structure_constructor is 
# a subset of the first alternative because component_spec_list is a 
# subset of type_param_spec_list.  by combining these two alternatives we can
# remove the backtracking on this rule.
structure_constructor
# options {true;}
#     : <T_IDENT> <T_LPAREN> type_param_spec_list <T_RPAREN>
# 		<T_LPAREN>
# 		opt_component_spec_list
# 		<T_RPAREN>
#     | <T_IDENT>
# 		<T_LPAREN>
# 		opt_component_spec_list
# 		<T_RPAREN>
    : <T_IDENT> <T_LPAREN> type_param_spec_list <T_RPAREN>
		opt_T_LPAREN__opt_component_spec_list__T_RPAREN
        
	;

# R458
component_spec
# init{...}
    :   opt_keyword__T_EQUALS component_data_source
            
    ;

component_spec_list
# init{...}
    :    	 
        component_spec star_T_COMMA__component_spec
        	 
    ;

# R459
# is (expr | data-target | proc-target)
# data_target isa expr so data_target deleted
# proc_target isa expr so proc_target deleted
component_data_source
	:	expr 
            
	;

# R460
enum_def
# init{...}
	:	enum_def_stmt
		enumerator_def_stmt
		star_enumerator_def_stmt
		end_enum_stmt
			
	;

# R461
enum_def_stmt
# init{...}
# after{...}
	:	opt_label <T_ENUM> <T_COMMA> <T_BIND> <T_LPAREN> 
            <T_IDENT>  <T_RPAREN> end_of_stmt
			
	;

# R462
enumerator_def_stmt
# init{...}
# after{...}
	:	opt_label <T_ENUMERATOR> opt_T_COLON_COLON 
            enumerator_list end_of_stmt
			
	;

# R463
# ERR_CHK 463 scalar_int_initialization_expr replaced by expr
# ERR_CHK 463 named_constant replaced by <T_IDENT>
enumerator
# init{...}
    :   <T_IDENT> opt_T_EQUALS__expr
            
    ;

enumerator_list
# init{...}
    :    	 
        enumerator star_T_COMMA__enumerator
        	 
    ;

# R464
end_enum_stmt
# init{...}
# after{...}
	:	opt_label <T_END> <T_ENUM> end_of_stmt 
            
	|	opt_label <T_ENDENUM> end_of_stmt 
            
	;

# R465
array_constructor
	:	<T_LPAREN> <T_SLASH> ac_spec <T_SLASH> <T_RPAREN>
			
	|	<T_LBRACKET> ac_spec <T_RBRACKET>
			
	;

# R466
# refactored to remove optional from lhs
ac_spec
#options {true;}
# after{...}
    : type_spec <T_COLON_COLON> opt_ac_value_list
    | ac_value_list
    ;

# R467 left_square_bracket inlined as <T_LBRACKET>

# R468 right_square_bracket inlined as <T_RBRACKET>

# R469
ac_value
#options {true;}
# after{...}
	:	expr
	|	ac_implied_do
	;

ac_value_list
# init{...}
    :    	 
        ac_value star_T_COMMA__ac_value
        	 
    ;

# R470
ac_implied_do
	:	<T_LPAREN> ac_value_list <T_COMMA> ac_implied_do_control <T_RPAREN>
			
	;

# R471
# ERR_CHK 471a scalar_int_expr replaced by expr
# ERR_CHK 471b ac_do_variable replaced by do_variable
ac_implied_do_control
# init{...}
    :    do_variable <T_EQUALS> expr <T_COMMA> expr opt_T_COMMA__expr
			
    ;

# R472 inlined ac_do_variable as scalar_int_variable (and finally <T_IDENT>) 
# in R471
# C493 (R472) ac-do-variable shall be a named variable
scalar_int_variable
    :   variable
            
    ;


#*
# Section/Clause 5: Attribute declarations and specifications
#


######
# R501
#
# This rule is overridden in FortranParserExtras grammar
#
type_declaration_stmt
# init{...}
# after{...}
   :   opt_label declaration_type_spec
       opt_for_type_declaration_stmt
       entity_decl_list end_of_stmt
           
   ;

# R502
declaration_type_spec
	:	intrinsic_type_spec
			
	|	<T_TYPE> <T_LPAREN>	derived_type_spec <T_RPAREN>
			
	|	<T_CLASS>	<T_LPAREN> derived_type_spec <T_RPAREN>
			
	|	<T_CLASS> <T_LPAREN> <T_ASTERISK> <T_RPAREN>
			
	;


#
# R502-F08 attr-spec
# is access-spec
# or ALLOCATABLE
# or ASYNCHRONOUS
# or CODIMENSION lbracket coarray-spec rbracket  # NEW_TO_2008
# or CONTIGUOUS                                  # NEW_TO_2008
# or DIMENSION ( array-spec)
# or EXTERNAL
# or INTENT ( intent-spec)
# or INTRINSIC
# or language-binding-spec
# or OPTIONAL
# or PARAMETER
# or POINTER
# or PROTECTED
# or SAVE
# or TARGET
# or VALUE
# or VOLATILE
#

######
# R502-F08, R503-F03
#
attr_spec
   :   access_spec
           
   |   <T_ALLOCATABLE>
           
   |   <T_ASYNCHRONOUS>
           
   |   <T_CODIMENSION> <T_LBRACKET> coarray_spec <T_RBRACKET>  # NEW_TO_2008
           
   |   <T_CONTIGUOUS>                                      # NEW_TO_2008
           
   |   <T_DIMENSION> <T_LPAREN> array_spec <T_RPAREN>
           
   |   <T_EXTERNAL>
           
   |   <T_INTENT> <T_LPAREN> intent_spec <T_RPAREN>
           
   |   <T_INTRINSIC>
           
   |   language_binding_spec		
           
   |   <T_OPTIONAL>
           
   |   <T_PARAMETER>
           
   |   <T_POINTER>
           
   |   <T_PROTECTED>
           
   |   <T_SAVE>
           
   |   <T_TARGET>
           
   |   <T_VALUE>
           
   |   <T_VOLATILE>
           
# TODO are <T_KIND> and <T_LEN> correct?
    |   <T_KIND>
           
    |   <T_LEN>
           
    |   attr_spec_extension
	;
	
# language extension point
attr_spec_extension : <T_NO_LANGUAGE_EXTENSION> ;


#
# R503-F08 entity-decl
# is object-name [( array-spec)]
# [ lracket coarray-spec rbracket ]
# [ * char-length ] [ initialization ]
# or function-name [ * char-length ]
#

######
# R503-F08, R504-F03
#
# <T_IDENT> inlined for object_name and function_name
# <T_IDENT> opt_T_ASTERISK__char_length takes character and function
# TODO Pass more info to action....
entity_decl
# init{...}
   :   <T_IDENT> opt_T_LPAREN__array_spec__T_RPAREN
               opt_T_LBRACKET__coarray_spec__T_RBRACKET
               opt_T_ASTERISK__char_length
               opt_initialization
          
   ;

entity_decl_list
# init{...}
    :		
    	entity_decl  star_T_COMMA__entity_decl
    		
    ;

#
# R505-F03 object-name
# is name
#

######
# R505-F03, R504-F08
#
object_name #returns [Token tk]
   :   <T_IDENT>   
   ;

# R506
# ERR_CHK 506 initialization_expr replaced by expr
initialization
	:	<T_EQUALS> expr		
	|	<T_EQ_GT> null_init	
	;

# R507
# C506 The function-reference shall be a reference to the NULL intrinsic 
# function with no arguments.
null_init
	:	<T_IDENT>  <T_LPAREN> <T_RPAREN>
			
	;

#
# R509-F08 coarray-spec
# is deferred-coshape-spec-list
# or explicit-coshape-spec
#

######
# R509-F08
#
# deferred-coshape-spec-list and explicit-coshape-spec rules are ambiguous so
# we use the same method as for array-spec.  Enough information is provided so
# that the coarray_spec can be figured out by the actions.  Note, that this
# means the parser can't determine all incorrect syntax as many rules are
# combined into one.  It is the action's responsiblity to enforce correct syntax.
#
coarray_spec
# init{...}
   :   array_spec_element  star_T_COMMA__array_spec_element
           
   ;

# R508
access_spec
	:	<T_PUBLIC>
			
	|	<T_PRIVATE>
			
	;

# R509
# ERR_CHK 509 scalar_char_initialization_expr replaced by expr
language_binding_spec
# init{...}
    :	<T_BIND> <T_LPAREN> <T_IDENT>  
          opt_for_language_binding_spec <T_RPAREN>
    		
    ;

# R510
array_spec
# init{...}
	:	array_spec_element 
		star_T_COMMA__array_spec_element
			
	;

# Array specifications can consist of these beasts. Note that we can't 
# mix/match arbitrarily, so we have to check validity in actions.
# Types: 	0 expr (e.g. 3 or m+1)
# 			1 expr: (e.g. 3:)
# 			2 expr:expr (e.g. 3:5 or 7:(m+1))
# 			3 expr:* (e.g. 3:* end of assumed size)
# 			4 *  (end of assumed size)
# 			5 :	 (could be part of assumed or deferred shape)
array_spec_element
# init{...}
	:   expr opt_for_array_spec_element
			
	|   <T_ASTERISK>
			
	|	<T_COLON>
			
	;

# R511
# refactored to remove conditional from lhs and inlined lower_bound and 
# upper_bound
explicit_shape_spec
# init{...}
    : 	expr opt_T_COLON__expr
			
	;

explicit_shape_spec_list
# init{...}
	:		
     	explicit_shape_spec  
            star_T_COMMA__explicit_shape_spec
			
    ;

# R512 lower_bound was specification_expr inlined as expr

# R513 upper_bound was specification_expr inlined as expr

# R514 assumed_shape_spec was ( lower_bound )? <T_COLON> not used in R510 
# array_spec

# R515 deferred_shape_spec inlined as <T_COLON> in deferred_shape_spec_list

# R516 assumed_size_spec absorbed into array_spec.

# R517
intent_spec
	:	<T_IN>		
	|	<T_OUT>		
	|	<T_IN> <T_OUT>	
	|	<T_INOUT>		
	;

# R518
access_stmt
# init{...}
# after{...}
    :    opt_label access_spec opt_opt_T_COLON_COLON__access_id_list end_of_stmt
			
    ;

# R519
# <T_IDENT> inlined for use_name
# generic_spec can be <T_IDENT> so <T_IDENT> deleted
# TODO - can this only be opt_T_IDENTS  generic_spec is more than that..
access_id
	:	generic_spec
            
	;

access_id_list
# init{...}
    :  		
		access_id  star_T_COMMA__access_id
      		
    ;

######
# R520-F03, R526-F08
#     - form of F08 used with allocatable_decl_list
#
allocatable_stmt
# init{...}
# after{...}
   :   opt_label
       <T_ALLOCATABLE> opt_T_COLON_COLON allocatable_decl_list end_of_stmt
           
   ;

#
# R527-F08 allocatable-decl
# is object-name [ ( array-spec) ] [ lbracket ( coarray-spec) ]
#

######
# R527-F08
#
allocatable_decl
# init{...}
   :   object_name 
          opt_T_LPAREN__array_spec__T_RPAREN
          opt_T_LBRACKET__coarray_spec__T_RBRACKET
              
   ;

allocatable_decl_list
# init{...}
   :       
       allocatable_decl  star_T_COMMA__allocatable_decl
           
   ;

# R521
# generic_name_list substituted for object_name_list
asynchronous_stmt
# init{...}
# after{...}
	:	opt_label <T_ASYNCHRONOUS> opt_T_COLON_COLON
		generic_name_list end_of_stmt
			
	;

# R522
bind_stmt
# init{...}
# after{...}
	:	opt_label language_binding_spec
		opt_T_COLON_COLON bind_entity_list end_of_stmt
			
	;

# R523
# <T_IDENT> inlined for entity_name and common_block_name
bind_entity
	:	<T_IDENT> 
        # false
	|	<T_SLASH> <T_IDENT> <T_SLASH> 
        # true
	;

bind_entity_list
# init{...}
    :  		
		bind_entity  star_T_COMMA__bind_entity
      		
    ;

# R524
data_stmt
# init{...}
# after{...}
	:	opt_label <T_DATA> data_stmt_set star_opt_T_COMMA__data_stmt_set end_of_stmt
			
    ;

# R525
data_stmt_set
	:	data_stmt_object_list
		<T_SLASH>
		data_stmt_value_list
		<T_SLASH>
            
	;

# R526
data_stmt_object
# after{...}
	:	variable
	|	data_implied_do
	;

data_stmt_object_list
# init{...}
    :  		
		data_stmt_object  star_T_COMMA__data_stmt_object
      		
    ;


# R527
# ERR_CHK 527 scalar_int_expr replaced by expr
# data_i_do_variable replaced by <T_IDENT>
data_implied_do
# init{...}
    : <T_LPAREN> data_i_do_object_list <T_COMMA> <T_IDENT> <T_EQUALS>
        expr <T_COMMA> expr opt_T_COMMA__expr <T_RPAREN>
        
    ;

# R528
# data_ref inlined for scalar_structure_component and array_element
data_i_do_object
# after{...}
	:	data_ref
	|	data_implied_do
	;

data_i_do_object_list
# init{...}
    :  		
		data_i_do_object  star_T_COMMA__data_i_do_object
      		
    ;

# R529 data_i_do_variable was scalar_int_variable inlined as <T_IDENT>
# C556 (R529) The data-i-do-variable shall be a named variable.

# R530
# ERR_CHK R530 designator is scalar-constant or integer constant when 
# followed by '*'
# data_stmt_repeat inlined from R531
# structure_constructure covers null_init if 'NULL()' so null_init deleted
# TODO - check for other cases of signed_real_literal_constant and 
# real_literal_constant problems
data_stmt_value
#options {true; 3;}
# init{...}
# after{...}
   :   designator opt_T_ASTERISK__data_stmt_constant
   |   int_literal_constant opt_T_ASTERISK__data_stmt_constant
   |   signed_real_literal_constant
   |   signed_int_literal_constant
   |   complex_literal_constant
   |   logical_literal_constant
   |   char_literal_constant
   |   boz_literal_constant
   |   structure_constructor       # is null_init if 'NULL()'
   |   hollerith_literal_constant  # deleted in F77
   ;

data_stmt_value_list
# init{...}
    :  		
		data_stmt_value  star_T_COMMA__data_stmt_value
      		
    ;

# R531 data_stmt_repeat inlined as (int_literal_constant | designator) in R530
# ERRCHK 531 int_constant shall be a scalar_int_constant
# scalar_int_constant replaced by int_constant replaced by 
# int_literal_constant as <T_IDENT> covered by designator
# scalar_int_constant_subobject replaced by designator

scalar_int_constant
    :   int_constant
            
    ;

# R532
# scalar_constant_subobject replaced by designator
# scalar_constant replaced by literal_constant as designator can be <T_IDENT>
# then literal_constant inlined (except for signed portion)
# structure_constructure covers null_init if 'NULL()' so null_init deleted
# The lookahead in the alternative for signed_real_literal_constant is 
# necessary because ANTLR won't look far enough ahead by itself and when it
# sees a <T_DIGIT_STRING>, it tries the signed_int_literal_constant.  this isn't
# correct since the new version of the real_literal_constants can start with
# a <T_DIGIT_STRING>.  
data_stmt_constant
#options {true; 3;}
# after{...}
	:	designator
	|	signed_int_literal_constant
    |   signed_real_literal_constant
	|	complex_literal_constant
	|	logical_literal_constant
	|	char_literal_constant
	|	boz_literal_constant
	|	structure_constructor # is null_init if 'NULL()'
	;


#
# R531-F08 codimension-stmt
# is CODIMENSION [ :: ] codimension-decl-list
#

######
# R531-F08
#
codimension_stmt
# init{...}
# after{...}
   :   opt_label
       <T_CODIMENSION> opt_T_COLON_COLON codimension_decl_list end_of_stmt
          
   ;
   
#
# R532-08 codimension-decl
# is coarray-name lbracket coarray-spec rbracket
#

######
# R532-F08
#
codimension_decl
   :   <T_IDENT> <T_LBRACKET> coarray_spec <T_RBRACKET>
           
   ;

codimension_decl_list
# init{...}
   :       
       codimension_decl  star_T_COMMA__codimension_decl
           
   ;

# R533 int_constant_subobject was constant_subobject inlined as designator 
# in R531

# R534 constant_subobject inlined as designator in R533
# C566 (R534) constant-subobject shall be a subobject of a constant.

# R535, R543-F2008
# array_name replaced by <T_IDENT>
dimension_stmt
# init{...}
# after{...}
	:	opt_label <T_DIMENSION> opt_T_COLON_COLON 
        dimension_decl star_T_COMMA__dimension_decl end_of_stmt
			
    ;

# R535-subrule
dimension_decl
   :   <T_IDENT> <T_LPAREN> array_spec <T_RPAREN>
           
   ;

# R536
# generic_name_list substituted for dummy_arg_name_list
intent_stmt
# init{...}
# after{...}
	:	opt_label <T_INTENT> <T_LPAREN> intent_spec <T_RPAREN> 
            opt_T_COLON_COLON generic_name_list end_of_stmt
			
	;

# R537
# generic_name_list substituted for dummy_arg_name_list
optional_stmt
# init{...}
# after{...}
	:   opt_label <T_OPTIONAL> opt_T_COLON_COLON 
            generic_name_list end_of_stmt
			
		
	;

# R538
parameter_stmt
# init{...}
# after{...}
	:	opt_label <T_PARAMETER> <T_LPAREN> 
            named_constant_def_list <T_RPAREN> end_of_stmt
			
	;

named_constant_def_list
# init{...}
    :  		
		named_constant_def  
            star_T_COMMA__named_constant_def
      		
    ;

# R539
# ERR_CHK 539 initialization_expr replaced by expr
# ERR_CHK 539 named_constant replaced by <T_IDENT>
named_constant_def
	:	<T_IDENT> <T_EQUALS> expr
			
	;

#
# R550-F08
# is POINTER [ :: ] pointer-decl-list
#

######
# R550-F08, R540-F03
#
# Cray pointer extension added 11/17/2010
#
pointer_stmt
# init{...}
# after{...}
    :   opt_label <T_POINTER>  cray_pointer_assoc_list  end_of_stmt
    |   opt_label <T_POINTER>  opt_T_COLON_COLON pointer_decl_list  end_of_stmt
   ;

pointer_decl_list
# init{...}
   :      
       pointer_decl  star_T_COMMA__pointer_decl
          
   ;

#
# R551-F08
# is object-name [ ( deferred-shape-spec-list) ]
# or proc-entity-name    
#

######
# R551-F08, R541-F03
#
# <T_IDENT> inlined as object_name and proc_entity_name (removing second alt)
pointer_decl
# init{...}
    :    <T_IDENT> opt_T_LPAREN__deferred_shape_spec_list__T_RPAREN
			
    ;

cray_pointer_assoc_list
# init{...}
   :      
       cray_pointer_assoc  star_T_COMMA__cray_pointer_assoc
          
   ;

cray_pointer_assoc
   :   <T_LPAREN> <T_IDENT> <T_COMMA> <T_IDENT> <T_RPAREN>
          
   ;

# R542
# generic_name_list substituted for entity_name_list
protected_stmt
# init{...}
# after{...}
	:	opt_label <T_PROTECTED> opt_T_COLON_COLON 
            generic_name_list end_of_stmt
			
	;

# R543
save_stmt
# init{...}
# after{...}
    : opt_label <T_SAVE> opt_opt_T_COLON_COLON__saved_entity_list end_of_stmt
		    
    ;

# R544
# <T_IDENT> inlined for object_name, proc_pointer_name (removing second alt), 
# and common_block_name
saved_entity
	:	<T_IDENT>
			
	|	<T_SLASH> <T_IDENT> <T_SLASH>
				# is common block name
	;

saved_entity_list
# init{...}
    :  		
		saved_entity  star_T_COMMA__saved_entity
      		
    ;


# R545 proc_pointer_name was name inlined as <T_IDENT>

# R546, R555-F08
# <T_IDENT> inlined for object_name
target_stmt
# init{...}
# after{...}
   :   opt_label
       <T_TARGET> opt_T_COLON_COLON target_decl_list end_of_stmt
			
   ;

#
# R557-F08 target-decl
# is   object-name [ ( array-spec) ]
# [ lbracket coarray-spec rbracket ]
#

######
# R557-F08
#
target_decl
# init{...}
   :   <T_IDENT> opt_T_LPAREN__array_spec__T_RPAREN
               opt_T_LBRACKET__coarray_spec__T_RBRACKET
          
   ;

# R557-F08
target_decl_list
# init{...}
   :       
       target_decl  star_T_COMMA__target_decl
           
   ;

# R547
# generic_name_list substituted for dummy_arg_name_list
value_stmt
# init{...}
# after{...}
	:	opt_label <T_VALUE> opt_T_COLON_COLON 
            generic_name_list end_of_stmt
		    
	;

# R548
# generic_name_list substituted for object_name_list
volatile_stmt
# init{...}
# after{...}
	:	opt_label <T_VOLATILE> opt_T_COLON_COLON 
            generic_name_list end_of_stmt
		    
	;

# R549
implicit_stmt
# init{...}
# after{...}
	:	opt_label <T_IMPLICIT> implicit_spec_list end_of_stmt
			 # true
	|	opt_label <T_IMPLICIT> <T_NONE> end_of_stmt
			 # false
	;

# R550
implicit_spec
	:	declaration_type_spec <T_LPAREN> letter_spec_list <T_RPAREN>
        
	;

implicit_spec_list
# init{...}
    :  		
		implicit_spec  star_T_COMMA__implicit_spec
      		
    ;


# R551
# TODO: here, we'll accept a <T_IDENT>, and then we'll have to do error 
# checking on it.  
letter_spec 
    : <T_IDENT> opt_T_MINUS__T_IDENT 
        
    ;

letter_spec_list
# init{...}
    :  		
		letter_spec  star_T_COMMA__letter_spec
      		
    ;

# R552
# <T_IDENT> inlined for namelist_group_name
namelist_stmt
# init{...}
# after{...}
    :	opt_label <T_NAMELIST> <T_SLASH> <T_IDENT> <T_SLASH>
			
    	namelist_group_object_list
		star_for_namelist_stmt end_of_stmt
			
    ;

# R553 namelist_group_object was variable_name inlined as <T_IDENT>

# <T_IDENT> inlined for namelist_group_object
namelist_group_object_list
# init{...}
    :  		
		<T_IDENT> 
		    star_T_COMMA__T_IDENT
      		
    ;

# R554
equivalence_stmt
# init{...}
# after{...}
	:	opt_label <T_EQUIVALENCE> equivalence_set_list 
            end_of_stmt
			
	;

# R555
equivalence_set
	:	<T_LPAREN> equivalence_object <T_COMMA> equivalence_object_list <T_RPAREN>
        
	;


equivalence_set_list
# init{...}
    :  		
		equivalence_set  star_T_COMMA__equivalence_set
      		
    ;

# R556
# <T_IDENT> inlined for variable_name
# data_ref inlined for array_element
# data_ref isa <T_IDENT> so <T_IDENT> deleted (removing first alt)
# substring isa data_ref so data_ref deleted (removing second alt)
equivalence_object
	:	substring 
	;

equivalence_object_list
# init{...}
    :  		
		equivalence_object  
            star_T_COMMA__equivalence_object
      		
    ;

# R557
# action.common_block_name must be called here because it needs
#     to be called even if optional '/common_block_name/' is not present
common_stmt
# init{...} 
# after{...}
    : opt_label 
		<T_COMMON> opt_common_block_name
			
		common_block_object_list
		star_for_common_stmt end_of_stmt
			
    ;

# <T_SLASH_SLASH> must be a option in case there are no spaces slashes, '#'
common_block_name #returns [Token id]
	: <T_SLASH_SLASH> 
	| <T_SLASH> opt_T_IDENT <T_SLASH> 
	;

# R558
# <T_IDENT> inlined for variable_name and proc_pointer_name
# <T_IDENT> covered by first alt so second deleted
common_block_object
# init{...}
    : <T_IDENT> opt_T_LPAREN__explicit_shape_spec_list__T_RPAREN
			
    ;

common_block_object_list
# init{...}
    :  		
		common_block_object  
            star_T_COMMA__common_block_object
      		
    ;


#*
# Section/Clause 6: Use of data objects
#               


# R601
variable
   :   designator 
   ;

# R602 variable_name was name inlined as <T_IDENT>

# R603
#  :   object-name             # <T_IDENT> (data-ref isa <T_IDENT>)
#	|	array-element           # R616 is data-ref
#	|	array-section           # R617 is data-ref [ (substring-range) ] 
#	|	structure-component     # R614 is data-ref
#	|	substring
# (substring-range) may be matched in data-ref
# this rule is now identical to substring
designator
# init{...}
	:	data_ref opt_T_LPAREN__substring_range__T_RPAREN
			
	|	char_literal_constant <T_LPAREN> substring_range <T_RPAREN>
			
	;

#
# a function_reference is ambiguous with designator, ie, foo(b) could be an 
# array element
#	function_reference : procedure_designator <T_LPAREN> 
# opt_actual_arg_spec_list <T_RPAREN>
#                       procedure_designator isa data_ref
# C1220 (R1217) The procedure-designator shall designate a function.
# data_ref may (or not) match <T_LPAREN> opt_actual_arg_spec_list <T_RPAREN>, 
# so is optional
designator_or_func_ref
# init{...}
# after{...}
	:	data_ref opt_T_LPAREN__substring_range_or_arg_list__T_RPAREN

	|	char_literal_constant <T_LPAREN> substring_range <T_RPAREN>
			
	;

substring_range_or_arg_list #returns [boolean isSubstringRange]
# init{...}
# after{...}
	:	<T_COLON> opt_expr # substring_range
			
	|		
		expr substr_range_or_arg_list_suffix
			
	|		
		<T_IDENT> <T_EQUALS> expr
			
		star_T_COMMA__actual_arg_spec
			
	|		
		opt_T_IDENT__T_EQUALS <T_ASTERISK> label
			
		star_T_COMMA__actual_arg_spec
			
	;

substr_range_or_arg_list_suffix #returns [boolean isSubstringRange]
# init{...}
# after{...}
	:		
		<T_COLON> opt_expr # substring_range
			
	|
			
		star_T_COMMA__actual_arg_spec
				# actual_arg_spec_list
	;

# R604
logical_variable
	:	variable
            
	;

# R605
default_logical_variable
	:	variable
            
	;

scalar_default_logical_variable
	:	variable
            
	;

# R606
char_variable
	:	variable
            
	;

# R607
default_char_variable
	:	variable
            
	;

scalar_default_char_variable
	:	variable
            
	;

# R608
int_variable
	:	variable
            
	;

# R609
# C608 (R610) parent_string shall be of type character
# fix for ambiguity in data_ref allows it to match <T_LPAREN> substring_range 
# <T_RPAREN>, so required <T_LPAREN> substring_range <T_RPAREN> made optional
# ERR_CHK 609 ensure final () is (substring-range)
substring
# init{...}
	:	data_ref opt_T_LPAREN__substring_range__T_RPAREN
			
	|	char_literal_constant <T_LPAREN> substring_range <T_RPAREN>
			
	;

# R610 parent_string inlined in R609 as (data_ref | char_literal_constant)
# <T_IDENT> inlined for scalar_variable_name
# data_ref inlined for scalar_structure_component and array_element
# data_ref isa <T_IDENT> so <T_IDENT> deleted
# scalar_constant replaced by char_literal_constant as data_ref isa <T_IDENT> 
# and must be character

# R611
# ERR_CHK 611 scalar_int_expr replaced by expr
substring_range
# init{...}
	:	opt_expr <T_COLON>	opt_expr
			
	;

# R612
data_ref
# init{...}
	:	part_ref  star_T_PERCENT__part_ref
			
	;

#*
# R612-F08 part-ref
# is part-name [ ( section-subscript-list) ] [ image-selector]
#

######
# R612-F08, R613-F03
#
# This rule is implemented in the FortranParserExtras grammar
#
#
# <T_IDENT> inlined for part_name
# with 2, this path is chosen over <T_LPAREN> substring_range <T_RPAREN>
# TODO error: if a function call, should match id rather than 
# (section_subscript_list)
#  foo(b) is ambiguous YUK...
part_ref
# options{...}
# init{...}
#   : =>   (<T_IDENT> <T_LPAREN>) 
   : <T_IDENT> <T_LPAREN> section_subscript_list <T_RPAREN>
                             opt_image_selector
           
#   | =>   (<T_IDENT> <T_LBRACKET>) 
   | <T_IDENT> image_selector
           
   |   <T_IDENT>
           
   ;


part_ref_no_image_selector
# options{...}
# init{...}
#   : =>   (<T_IDENT> <T_LPAREN>) 
   : <T_IDENT> <T_LPAREN> section_subscript_list <T_RPAREN>
           
   |   <T_IDENT>
           
   ;


# R614 structure_component inlined as data_ref

# R615 type_param_inquiry inlined in R701 then deleted as can be designator
# <T_IDENT> inlined for type_param_name

# R616 array_element inlined as data_ref

# R617 array_section inlined in R603

# R618 subscript inlined as expr
# ERR_CHK 618 scalar_int_expr replaced by expr


######
# R620-F08, R619-F03
#
# expr inlined for subscript, vector_subscript, and stride (thus deleted option 3)
# refactored first optional expr from subscript_triplet modified to also match
# actual_arg_spec_list to reduce ambiguities and need for backtracking
section_subscript #returns [boolean isEmpty]
# init{...}
   :   expr section_subscript_ambiguous
   |   <T_COLON> opt_expr opt_T_COLON__expr
           
   |   <T_COLON_COLON> expr
           
   |   <T_IDENT> <T_EQUALS> expr	# could be an actual-arg, see R1220
           
   |   <T_IDENT> <T_EQUALS> <T_ASTERISK> label # could be an actual-arg, see R1220
           
   |   <T_ASTERISK> label 
           
   |       
   ;

section_subscript_ambiguous
# init{...}
   :   <T_COLON> opt_expr opt_T_COLON__expr
           
       # this alternative is necessary because if alt1 above has no expr
       # following the first : and there is the optional second : with no 
       # WS between the two, the lexer will make a <T_COLON_COLON> token 
       # instead of two <T_COLON> tokens.  in this case, the second expr is
       # required.  for an example, see J3/04-007, Note 7.44.
   |  <T_COLON_COLON> expr
           
   |       
   ;


#*
# R620-F08 section-subscript
# is subscript
# or subscript-triplet
# or vector-subscript
#

######
# R620-F08 list
#
# This rule must be kept here with part-ref, otherwise parsing errors will occur.
# It is unknown why this happens.
#
section_subscript_list
# init{...}
   :       
       section_subscript
           
       star_T_COMMA__section_subscript
           
   ;


# R622
# ERR_CHK 622 int_expr replaced by expr
vector_subscript
	:	expr
            
	;

# R622 inlined vector_subscript as expr in R619
# ERR_CHK 622 int_expr replaced by expr

# R623
# modified to remove backtracking by looking for the token inserted during
# the lexical prepass if a :: was found (which required alt1 below).
allocate_stmt
# init{...}
# after{...}
    :	opt_label <T_ALLOCATE_STMT_1> <T_ALLOCATE> <T_LPAREN>
		type_spec <T_COLON_COLON>
		allocation_list 
		opt_T_COMMA__alloc_opt_list <T_RPAREN> 
            end_of_stmt
    		
    |	opt_label <T_ALLOCATE> <T_LPAREN>
    	allocation_list
    	opt_T_COMMA__alloc_opt_list <T_RPAREN> 
            end_of_stmt
    		
    ;

#
# R624-F08 image-selector
# is lbracket cosubscript-list rbracket
#

######
# R624-F08
#
image_selector
   :   <T_LBRACKET> cosubscript_list <T_RBRACKET>
           
   ;

# R624
# ERR_CHK 624 source_expr replaced by expr
# stat_variable and errmsg_variable replaced by designator
alloc_opt
	:	<T_IDENT> <T_EQUALS> expr
            
			
	;

alloc_opt_list
# init{...}
    :  		
		alloc_opt  star_T_COMMA__alloc_opt
      		
    ;

#
# R625-F08 cosubscript
# is scalar-int-expr
#

######
# R625-F08
#
cosubscript
   :   scalar_int_expr
   ;

cosubscript_list
# init{...}
   :       
       cosubscript  star_T_COMMA__cosubscript
           
   ;


# R625 stat_variable was scalar_int_variable inlined in R624 and R636
# R626 errmsg_variable was scalar_default_char_variable inlined in R624 
# and R636
# R627 inlined source_expr was expr

#
# R631-08 allocation
# is allocate-object [ ( allocate-shape-spec-list) ]
# [ lbracket allocate-coarray-spec rbracket ]  # NEW_TO_2008
#

######
# R631-F08, R628-F03
#
# C644 (R632) An allocate-object shall not be a coindexed object.
#

allocation
   :   <T_IDENT>
           
   ;

allocation_list
# init{...}
   :       
       allocation  star_T_COMMA__allocation
           
   ;

#*
# R632-F08 allocate-object
# is variable-name
# structure-component
#

######
# R636-F08, R629-F03
#
# C644 (R632) An allocate-object shall not be a coindexed object.
#
# <T_IDENT> inlined for variable_name
# data_ref inlined for structure_component
# data_ref isa <T_IDENT> so <T_IDENT> deleted
# data_ref inlined and part_ref_no_image_selector called directly
#
allocate_object
# init{...}
   :   part_ref_no_image_selector 
       star_T_PERCENT__part_ref_no_image_selector
           
   ;

allocate_object_list
# init{...}
    :  		
		allocate_object  star_T_COMMA__allocate_object
      		
    ;


# R630
# ERR_CHK 630a lower_bound_expr replaced by expr
# ERR_CHK 630b upper_bound_expr replaced by expr

# SAD NOTE 1: In ROSE, there is no IR for allocations. That is, there is no place in the AST to hold the
# 'allocate_shape_spec_list' and 'rice_allocate_coarray_spec' if any. The only way to preserve them is
# to encode them in the 'allocate_object' itself, i.e. as part of an expression.

# SAD NOTE 2: In this rule, the 'allocate_shape_spec_list' is never recognized. Its corresponding action
# 'action.allocate_shape_spec' is a no-op in ROSE. Shape specs are parsed by the 'allocate_object' rule
# as a section subscript list within a part ref. Sigh! On the other hand, this is just as well because
# there is no other way to represent the shape specs (see Sad Note 1).

allocate_shape_spec
# init{...}
	:	expr opt_T_COLON__expr
    		
    ;

allocate_shape_spec_list
# init{...}
    :  		
		allocate_shape_spec  
            star_T_COMMA__allocate_shape_spec
      		
    ;

# R631 inlined lower_bound_expr was scalar_int_expr

# R632 inlined upper_bound_expr was scalar_int_expr


######
# R636-F08
#
# This rule is implemented in FortranParserExtras grammar


#
# R636-F08 allocate-coarray-spec
# is   [ allocate-coshape-spec-list , ] [ lower-bound-expr : ] *
#
allocate_coarray_spec
# options{...}
# after{...}
#   : =>   (<T_ASTERISK>)              
   : <T_ASTERISK>
#   | =>   (expr <T_COLON> <T_ASTERISK>) 
   | expr <T_COLON> <T_ASTERISK>
   ;

######
# R637-F08
#
allocate_coshape_spec
# init{...}
   :   expr opt_T_COLON__expr
           
   ;

allocate_coshape_spec_list
# init{...}
   :       
       allocate_coshape_spec  star_T_COMMA__allocate_coshape_spec
           
   ;


# R633
nullify_stmt
# init{...} # @init{INIT_TOKEN_NULL(lbl);}
# after{...}
	:	opt_label
		<T_NULLIFY> <T_LPAREN> pointer_object_list <T_RPAREN> end_of_stmt
			
	;

# R634
# <T_IDENT> inlined for variable_name and proc_pointer_name
# data_ref inlined for structure_component
# data_ref can be a <T_IDENT> so <T_IDENT> deleted
pointer_object
	:	data_ref
            
	;

pointer_object_list
# init{...}
    :  		
		pointer_object  star_T_COMMA__pointer_object
      		
    ;

# R635
deallocate_stmt
# init{...}
# after{...}
    :    opt_label <T_DEALLOCATE> <T_LPAREN> allocate_object_list 
            opt_T_COMMA__dealloc_opt_list 
            <T_RPAREN> end_of_stmt
			
    ;

# R636
# stat_variable and errmsg_variable replaced by designator
dealloc_opt
	:	<T_IDENT>  <T_EQUALS> designator
            
	;

dealloc_opt_list
# init{...}
    :  		
		dealloc_opt  star_T_COMMA__dealloc_opt
      		
    ;

#*
# Section/Clause 7: Expressions and assignment
#

# R701
# constant replaced by literal_constant as <T_IDENT> can be designator
# <T_IDENT> inlined for type_param_name
# data_ref in designator can be a <T_IDENT> so <T_IDENT> deleted
# type_param_inquiry is designator <T_PERCENT> <T_IDENT> can be designator so 
# deleted 
# function_reference integrated with designator (was ambiguous) and 
# deleted (to reduce backtracking)
primary
#options {true;}       # alt 1,4 ambiguous
# after{...}
	:	designator_or_func_ref
	|	literal_constant
	|	array_constructor
	|	structure_constructor
	|	<T_LPAREN> expr <T_RPAREN> 
	;

# R702
level_1_expr
# init{...} #@init{INIT_TOKEN_NULL(tk);}
    : opt_defined_unary_op primary
    		
    ;

# R703
defined_unary_op #returns [Token tk]
	:	<T_DEFINED_OP> 
            
	;

# inserted as R704 functionality
power_operand
# init{...}
	: level_1_expr opt_power_op__power_operand
			
	;	

# R704
# see power_operand
mult_operand
# init{...}
#    : level_1_expr opt_power_op__mult_operand
#    : power_operand
    : power_operand star_mult_op__power_operand
    		
    ;

# R705-addition
# This rule has been added so the unary plus/minus has the correct
# precedence when actions are fired.
signed_operand
# init{...}
   :   opt_add_op mult_operand 
          
   ;

# R705
# moved leading optionals to mult_operand
add_operand
# init{...}
# after{...}
#    : opt_add_operand__mult_op mult_operand
#    : star_mult_operand__mult_op mult_operand
   :   signed_operand
       star_add_op__mult_operand
   ;

# R706
# moved leading optionals to add_operand
level_2_expr
# init{...}
#    : opt_opt_level_2_expr__add_op add_operand
# check notes on how to remove this left recursion  
# (WARNING something like the following)
#    : opt_add_op star_add_operand__add_op add_operand
    : add_operand star_concat_op__add_operand
    		
    ;

# R707
power_op #returns [Token tk]
	:	<T_POWER>	
            
	;

# R708
mult_op #returns [Token tk]
	:	<T_ASTERISK>	
	|	<T_SLASH>		
	;

# R709
add_op #returns [Token tk]
	:	<T_PLUS>  
	|	<T_MINUS> 
	;

# R710
# moved leading optional to level_2_expr
level_3_expr
# init{...} #@init{INIT_TOKEN_NULL(relOp);}
#    : opt_level_3_expr__concat_op level_2_expr
#    : star_level_2_expr__concat_op level_2_expr
    : level_2_expr opt_rel_op__level_2_expr
    		
    ;

# R711
concat_op #returns [Token tk]
	:	<T_SLASH_SLASH>	
	;

# R712
# moved leading optional to level_3_expr
# inlined level_3_expr for level_4_expr in R714
#level_4_expr
#    : opt_level_3_expr__rel_op level_3_expr
#    : level_3_expr
#    ;

# R713
rel_op #returns [Token tk]
# after{...}
	:	<T_EQ>				
	|	<T_NE>				
	|	<T_LT>				
	|	<T_LE>				
	|	<T_GT>				
	|	<T_GE>				
	|	<T_EQ_EQ>				
	|	<T_SLASH_EQ>			
	|	<T_LESSTHAN>			
	|	<T_LESSTHAN_EQ>		
	|	<T_GREATERTHAN>		
	|	<T_GREATERTHAN_EQ>	
	;

# R714
# level_4_expr inlined as level_3_expr
and_operand
# init{...}
#    :    opt_not_op level_3_expr
	:	opt_not_op
    	level_3_expr
		star_for_and_operand
				
    ;

# R715
# moved leading optional to or_operand
or_operand
# init{...}
#    : opt_or_operand__and_op and_operand
#    : star_and_operand__and_op and_operand
    : and_operand star_or_op__and_operand
    		
    ;

# R716
# moved leading optional to or_operand
# TODO - action for equiv_op token
equiv_operand
# init{...}
#    : opt_equiv_operand__or_op or_operand
#    : star_or_operand__or_op or_operand
    : or_operand 
        star_equiv_op__or_operand
			
    ;

# R717
# moved leading optional to equiv_operand
level_5_expr
# init{...}
#    : opt_level_5_expr__equiv_op equiv_operand
#    : star_equiv_operand__equiv_op equiv_operand
    : equiv_operand star_defined_binary_op__equiv_operand
    		
    ;

# R718
not_op #returns [Token tk]
	:	<T_NOT>  
	;

# R719
and_op #returns [Token tk]
	:	<T_AND> 
	;

# R720
or_op #returns [Token tk]
	:	<T_OR> 
	;

# R721
equiv_op #returns [Token tk]
	:	<T_EQV> 
	|	<T_NEQV> 
	;

# R722
# moved leading optional to level_5_expr
expr
#    : opt_expr__defined_binary_op level_5_expr
#    : star_level_5_expr__defined_binary_op level_5_expr
    : level_5_expr
    	
    ;

# R723
defined_binary_op #returns [Token tk]
	:	<T_DEFINED_OP> 
	;

######
# R724-F08, R724-F03
#
logical_expr
   :   expr
   ;

scalar_logical_expr
   :   expr
   ;


#
# R726-08 int-expr
# is   expr
#

######
# R726-F08, R727-F03
#
int_expr
   :   expr
   ;

scalar_int_expr
   :   expr
   ;


# R725 inlined char_expr was expr

# R726 inlined default_char_expr

# R727 inlined int_expr

# R728 inlined numeric_expr was expr

# inlined scalar_numeric_expr was expr

# R729 inlined specification_expr was scalar_int_expr

# R730 inlined initialization_expr

# R731 inlined char_initialization_expr was char_expr

# inlined scalar_char_initialization_expr was char_expr

# R732 inlined int_initialization_expr was int_expr

# inlined scalar_int_initialization_expr was int_initialization_expr

# R733 inlined logical_initialization_expr was logical_expr

# inlined scalar_logical_initialization_expr was logical_expr

# R734
assignment_stmt
# init{...}
# after{...}
	:	opt_label <T_ASSIGNMENT_STMT> variable
		<T_EQUALS> expr end_of_stmt
			
	;

# R735
# ERR_TEST 735 ensure that part_ref in data_ref doesn't capture the <T_LPAREN>
# data_pointer_object and proc_pointer_object replaced by designator
# data_target and proc_target replaced by expr
# third alt covered by first alt so proc_pointer_object assignment deleted
# designator (R603), minus the substring part is data_ref, so designator 
# replaced by data_ref,
# see NOTE 6.10 for why array-section does not have pointer attribute
# TODO: alt1 and alt3 require the backtracking.  if find a way to disambiguate
# them, should be able to remove backtracking.
pointer_assignment_stmt
#options {true;}
# init{...}
# after{...}
    : opt_label <T_PTR_ASSIGNMENT_STMT> data_ref <T_EQ_GT> 
            expr end_of_stmt
			
    | opt_label <T_PTR_ASSIGNMENT_STMT> data_ref <T_LPAREN> 
            bounds_spec_list <T_RPAREN> <T_EQ_GT> expr end_of_stmt
			
    | opt_label <T_PTR_ASSIGNMENT_STMT> data_ref <T_LPAREN> 
            bounds_remapping_list <T_RPAREN> <T_EQ_GT> expr end_of_stmt
			
    ;

# R736
# ERR_CHK 736 ensure ( <T_IDENT> | designator ending in <T_PERCENT> <T_IDENT>)
# <T_IDENT> inlined for variable_name and data_pointer_component_name
# variable replaced by designator
data_pointer_object
	:	designator
            
	;

# R737
# ERR_CHK 737 lower_bound_expr replaced by expr
bounds_spec
	:	expr <T_COLON>
            
	;

bounds_spec_list
# init{...}
    :  		
		bounds_spec  star_T_COMMA__bounds_spec
      		
    ;

# R738
# ERR_CHK 738a lower_bound_expr replaced by expr
# ERR_CHK 738b upper_bound_expr replaced by expr
bounds_remapping
	:	expr <T_COLON> expr
            
	;

bounds_remapping_list
# init{...}
    :  		
		bounds_remapping  star_T_COMMA__bounds_remapping
      		
    ;

# R739 data_target inlined as expr in R459 and R735
# expr can be designator (via primary) so variable deleted

# R740
# ERR_CHK 740 ensure ( <T_IDENT> | ends in <T_PERCENT> <T_IDENT>)
# <T_IDENT> inlined for proc_pointer_name
# proc_component_ref replaced by designator <T_PERCENT> <T_IDENT> replaced 
# by designator
proc_pointer_object
	:	designator
            
	;

# R741 proc_component_ref inlined as designator <T_PERCENT> <T_IDENT> in R740, 
# R742, R1219, and R1221
# <T_IDENT> inlined for procedure_component_name
# designator inlined for variable

# R742 proc_target inlined as expr in R459 and R735
# ERR_CHK 736 ensure ( expr | designator ending in <T_PERCENT> <T_IDENT>)
# <T_IDENT> inlined for procedure_name
# <T_IDENT> isa expr so <T_IDENT> deleted
# proc_component_ref is variable <T_PERCENT> <T_IDENT> can be designator 
# so deleted

# R743
# ERR_CHK 743 mask_expr replaced by expr
# assignment_stmt inlined for where_assignment_stmt
where_stmt
# init{...}
# after{...}
	:
		opt_label <T_WHERE_STMT> <T_WHERE>
		<T_LPAREN> expr <T_RPAREN> assignment_stmt
			
	;

# R744
where_construct
# init{...}
    :    where_construct_stmt star_where_body_construct
          star_masked_elsewhere_stmt__star_where_body_construct
          opt_for_where_construct
         end_where_stmt
                
    ;

# R745
# ERR_CHK 745 mask_expr replaced by expr
where_construct_stmt
# init{...}
# after{...}
	:	opt_T_IDENT__T_COLON <T_WHERE_CONSTRUCT_STMT> <T_WHERE> 
            <T_LPAREN> expr <T_RPAREN> end_of_stmt
				
    ;

# R746
# assignment_stmt inlined for where_assignment_stmt
where_body_construct
# after{...}
	:	assignment_stmt
	|	where_stmt
	|	where_construct
	;

# R747 where_assignment_stmt inlined as assignment_stmt in R743 and R746

# R748 inlined mask_expr was logical_expr

# inlined scalar_mask_expr was scalar_logical_expr

# inlined scalar_logical_expr was logical_expr

# R749
# ERR_CHK 749 mask_expr replaced by expr
masked_elsewhere_stmt
# init{...}
# after{...}
	:	opt_label <T_ELSE> <T_WHERE> <T_LPAREN> expr <T_RPAREN> 
            opt_T_IDENT end_of_stmt 
			
	|	opt_label <T_ELSEWHERE> <T_LPAREN> expr <T_RPAREN> 
            opt_T_IDENT end_of_stmt 
			
	;

# R750
elsewhere_stmt
# init{...} 
# after{...}
	:	opt_label <T_ELSE> <T_WHERE> 
            opt_T_IDENT end_of_stmt
			
	|	opt_label <T_ELSEWHERE> opt_T_IDENT 
            end_of_stmt 
			
	;

# R751
end_where_stmt
# init{...} # @init{INIT_TOKEN_NULL(lbl);}
# after{...}
	: opt_label <T_END> <T_WHERE> opt_T_IDENT 
        end_of_stmt
		
	| opt_label <T_ENDWHERE> opt_T_IDENT 
        end_of_stmt
		
	;

# R752
forall_construct
# after{...}
	:	forall_construct_stmt
		star_forall_body_construct
		end_forall_stmt
	;

# R753
forall_construct_stmt
# init{...} 
# after{...}
    :    opt_label opt_T_IDENT__T_COLON 
            <T_FORALL_CONSTRUCT_STMT> <T_FORALL> 
            forall_header end_of_stmt
				
    ;

# R754
# ERR_CHK 754 scalar_mask_expr replaced by expr
forall_header
# after{...}
    : <T_LPAREN> forall_triplet_spec_list opt_T_COMMA__expr <T_RPAREN>
    ;

# R755
# <T_IDENT> inlined for index_name
# expr inlined for subscript and stride
forall_triplet_spec
# init{...}
    : <T_IDENT> <T_EQUALS> expr <T_COLON> expr opt_T_COLON__expr
			
    ;


forall_triplet_spec_list
# init{...}
    :  		
		forall_triplet_spec  
            star_T_COMMA__forall_triplet_spec
      		
    ;

# R756
forall_body_construct
# after{...}
	:	forall_assignment_stmt
	|	where_stmt
	|	where_construct
	|	forall_construct
	|	forall_stmt
	;

# R757
forall_assignment_stmt
# after{...}
	:	assignment_stmt
			
	|	pointer_assignment_stmt
			
	;

# R758
end_forall_stmt
# init{...}
# after{...}
	: opt_label <T_END> <T_FORALL> opt_T_IDENT 
        end_of_stmt
		
	| opt_label <T_ENDFORALL> opt_T_IDENT 
        end_of_stmt
		
	;

# R759
# <T_FORALL_STMT> token is inserted by scanner to remove need for backtracking
forall_stmt
# init{...}
# after{...}
	:	opt_label <T_FORALL_STMT> <T_FORALL>
		forall_header
		forall_assignment_stmt
			
	;


#*
# Section/Clause 8: Execution control
#


# R801
block
# after{...}
	:	star_execution_part_construct
	;

# R802
if_construct
# after{...}
    :   if_then_stmt block star_else_if_stmt__block opt_else_stmt__block 
            end_if_stmt
    ;

# R803
# ERR_CHK 803 scalar_logical_expr replaced by expr
if_then_stmt
# init{...}
# after{...}
    : opt_label opt_T_IDENT__T_COLON <T_IF> 
            <T_LPAREN> expr <T_RPAREN> <T_THEN> end_of_stmt
			
    ;

# R804
# ERR_CHK 804 scalar_logical_expr replaced by expr
else_if_stmt
# init{...}
# after{...}
	: opt_label <T_ELSE> <T_IF>
        <T_LPAREN> expr <T_RPAREN> <T_THEN> opt_T_IDENT end_of_stmt
			
	| opt_label <T_ELSEIF>
        <T_LPAREN> expr <T_RPAREN> <T_THEN> opt_T_IDENT end_of_stmt
			
	;

# R805
else_stmt
# init{...}
# after{...}
	:	opt_label <T_ELSE> opt_T_IDENT 
            end_of_stmt
			
	;

# R806
end_if_stmt
# init{...}
# after{...}
	: opt_label <T_END> <T_IF> opt_T_IDENT 
        end_of_stmt
			
	| opt_label <T_ENDIF>    opt_T_IDENT 
            end_of_stmt
			
	;

# R807
# ERR_CHK 807 scalar_logical_expr replaced by expr
# <T_IF_STMT> inserted by scanner to remove need for backtracking
if_stmt
# init{...}
# after{...}
	:	opt_label <T_IF_STMT> <T_IF> <T_LPAREN> expr <T_RPAREN> 
			action_stmt
				
	;

#
# R807-F08 block-construct
# is block-stmt
# [ specification-part ]
# block
# end-block-stmt
# 
# C806-F08 (R807-F08) The specification-part of a BLOCK construct shall not contain a
# COMMON, EQUIVALENCE, IMPLICIT, INTENT, NAMELIST, OPTIONAL, statement function, or
# VALUE statement.
# 
# C806-F08 means that the implicit-part in specification-part can be removed
#

######
# R807-F08
#
block_construct
# after{...}
   :   block_stmt
         specification_part_and_block
       end_block_stmt
   ;

specification_part_and_block
# init{...}
   :   star_use_stmt
       star_import_stmt
       declaration_construct_and_block
           
   ;

declaration_construct_and_block
# init{...}
#   : =>   (opt_label <T_ENTRY>)      
   : entry_stmt       declaration_construct_and_block
#   | =>   (opt_label <T_ENUM>)       
   | enum_def         declaration_construct_and_block
#   | =>   (opt_label <T_FORMAT>)     
   | format_stmt      declaration_construct_and_block
#   | =>   (opt_label <T_INTERFACE>)  
   | interface_block  declaration_construct_and_block
#   | =>   (opt_label <T_PARAMETER>)  
   | parameter_stmt   declaration_construct_and_block
#   | =>   (opt_label <T_PROCEDURE>)  
   | procedure_declaration_stmt
                                                   declaration_construct_and_block
#   | =>   (derived_type_stmt)     
   | derived_type_def declaration_construct_and_block
#   | =>   (type_declaration_stmt) 
   | type_declaration_stmt declaration_construct_and_block

   # the following are from other_specification_stmt
#   | =>   (opt_label access_spec)    

   | access_stmt       declaration_construct_and_block
#   | =>   (opt_label <T_ALLOCATABLE>)  
   | allocatable_stmt  declaration_construct_and_block
#   | =>   (opt_label <T_ASYNCHRONOUS>) 
   | asynchronous_stmt declaration_construct_and_block
#   | =>   (opt_label <T_BIND>)         
   | bind_stmt         declaration_construct_and_block
#   | =>   (opt_label <T_CODIMENSION>)  
   | codimension_stmt  declaration_construct_and_block
#   | =>   (opt_label <T_DATA>)         
   | data_stmt         declaration_construct_and_block
#   | =>   (opt_label <T_DIMENSION>)    
   | dimension_stmt    declaration_construct_and_block
#   | =>   (opt_label <T_EXTERNAL>)     
   | external_stmt     declaration_construct_and_block
#   | =>   (opt_label <T_INTRINSIC>)    
   | intrinsic_stmt    declaration_construct_and_block
#   | =>   (opt_label <T_POINTER>)      
   | pointer_stmt      declaration_construct_and_block
#   | =>   (opt_label <T_PROTECTED>)    
   | protected_stmt    declaration_construct_and_block
#   | =>   (opt_label <T_SAVE>)         
   | save_stmt         declaration_construct_and_block
#   | =>   (opt_label <T_TARGET>)       
   | target_stmt       declaration_construct_and_block
#   | =>   (opt_label <T_VOLATILE>)     
   | volatile_stmt     declaration_construct_and_block
   |   block 
   ;

#
# R808-F08 block-stmt
# is [ block-construct-name : ] BLOCK
#

######
# R808-F08
#
block_stmt
# init{...}
# after{...}
   :   opt_label
       opt_T_IDENT__T_COLON
       <T_BLOCK> end_of_stmt
           
   ;

#
# R809-F08 end-block-stmt
# is END BLOCK [ block-construct-name ]
#

######
# R809-F08
#
end_block_stmt
# init{...}
# after{...}
   :   opt_label
       <T_END> <T_BLOCK> opt_T_IDENT end_of_stmt
           
   |   opt_label
       <T_ENDBLOCK> opt_T_IDENT end_of_stmt
           
   ;

#
# R810-F08 critical-construct
# is critical-stmt
# block
# end-critical-stmt
#

######
# R810-F08
#
critical_construct
   :   critical_stmt block end_critical_stmt
           
   ;

#
# R811-F08 critical-stmt
# is [ critical-construct-name : ] CRITICAL
#

######
# R811-F08
#
critical_stmt
# init{...}
# after{...}
   :   opt_label
       opt_T_IDENT__T_COLON
       <T_CRITICAL> end_of_stmt
           
   ;

#
# R812-F08 end-critical-stmt
# is END CRITICAL [ critical-construct-name ]
#

######
# R812-F08
#
end_critical_stmt
# init{...}
# after{...}
   :   opt_label
       <T_END> <T_CRITICAL> opt_T_IDENT end_of_stmt
           
   ;

# R808
case_construct
# after{...}
    :    select_case_stmt star_case_stmt__block end_select_stmt
    ;

# R809
# ERR_CHK 809 case_expr replaced by expr
select_case_stmt
# init{...}
# after{...}
    :    opt_label opt_T_IDENT__T_COLON
        option_for_select_case_stmt
            <T_LPAREN> expr <T_RPAREN> end_of_stmt
			
    ;

# R810
case_stmt
# init{...}
# after{...}
	:	opt_label <T_CASE> case_selector
		    opt_T_IDENT end_of_stmt
			
	;

# R811
end_select_stmt
# init{...}
# after{...}
	: opt_label <T_END> <T_SELECT> opt_T_IDENT 
        end_of_stmt
			
	| opt_label <T_ENDSELECT>    opt_T_IDENT 
        end_of_stmt
			
	;

# R812 inlined case_expr with expr was either scalar_int_expr 
# scalar_char_expr scalar_logical_expr

# inlined scalar_char_expr with expr was char_expr

# R813
case_selector
	:	<T_LPAREN>
		case_value_range_list
		<T_RPAREN>
            
	|	<T_DEFAULT>
            
	;

# R814
case_value_range
# after{...}
	:	<T_COLON> case_value
	|	case_value case_value_range_suffix
	;

case_value_range_suffix
# after{...}
	:	<T_COLON> opt_case_value
	|	
	;

case_value_range_list
# init{...}
    :  		
		case_value_range  star_T_COMMA__case_value_range
      		
    ;

# R815
# ERR_CHK 815 expr either scalar_int_initialization_expr 
# scalar_char_initialization_expr scalar_logical_initialization_expr
case_value
	:	expr
            
	;

# R816
associate_construct
	:	associate_stmt
		block
		end_associate_stmt
            
	;

# R817
associate_stmt
# init{...}
# after{...}
    :   opt_label opt_T_IDENT__T_COLON 
            <T_ASSOCIATE> <T_LPAREN> association_list <T_RPAREN> end_of_stmt
			
    ;

association_list
# init{...}
    :  		
		association  star_T_COMMA__association
      		
    ;

#
# R818-08 loop-control
# is   [ , ] do- scalar-int-expr , scalar-int-expr [ , scalar-int-expr ]
# or   [ , ] WHILE ( scalar-logical-expr)
# or   [ , ] CONCURRENT forall-header
#

######
# R818-F08, R830-F03
#
# ERR_CHK 818 scalar_int_expr replaced by expr
# ERR_CHK 818 scalar_logical_expr replaced by expr
loop_control
# init{...}
   :   opt_T_COMMA do_variable <T_EQUALS> expr <T_COMMA> expr
       opt_T_COMMA__expr
           
   |   opt_T_COMMA <T_WHILE> <T_LPAREN> expr <T_RPAREN> 
           
   |   opt_T_COMMA <T_CONCURRENT> forall_header
           
   ;

# R818
# <T_IDENT> inlined for associate_name
association
	:	<T_IDENT> <T_EQ_GT> selector
            
	;

# R819
# expr can be designator (via primary) so variable deleted
selector
	:	expr
            
	;

# R820
end_associate_stmt
# init{...}
# after{...}
	:   opt_label <T_END> <T_ASSOCIATE> 
            opt_T_IDENT end_of_stmt
			
	|   opt_label <T_ENDASSOCIATE>  
            opt_T_IDENT end_of_stmt
			
	;

# R821
select_type_construct
    :   select_type_stmt star_type_guard_stmt__block end_select_type_stmt
            
    ;

# R822
# <T_IDENT> inlined for select_construct_name and associate_name
select_type_stmt
# init{...}
# after{...}
    : opt_label
		opt_T_IDENT__T_COLON select_type
        <T_LPAREN> opt_T_IDENT__T_EQ_GT
		selector <T_RPAREN> end_of_stmt
			
    ;

select_type
    : <T_SELECT> <T_TYPE> 
    | <T_SELECTTYPE> 
    ;

# R823
# <T_IDENT> inlined for select_construct_name
# TODO - FIXME - have to remove <T_TYPE_IS> and <T_CLASS_IS> because the 
# lexer never matches the sequences.  lexer now matches a <T_IDENT> for 
# the 'IS'.  this rule should be fixed (see test_select_stmts.f03)
# TODO - The temporary token seems convoluted, but I couldn't figure out 
# how to prevent ambiguous use of <T_IDENT> otherwise. -BMR
type_guard_stmt
# init{...}
# after{...}
	:	opt_label <T_TYPE> <T_IDENT> 
            <T_LPAREN> type_spec <T_RPAREN>
		    opt_T_IDENT end_of_stmt
			
	|	opt_label <T_CLASS> <T_IDENT> 
            <T_LPAREN> type_spec <T_RPAREN>
		    opt_T_IDENT end_of_stmt
			
	|	opt_label <T_CLASS>	<T_DEFAULT>
		opt_T_IDENT end_of_stmt
			
	;

# R824
# <T_IDENT> inlined for select_construct_name
end_select_type_stmt
# init{...}
# after{...}
	:	opt_label <T_END> <T_SELECT> 
            opt_T_IDENT end_of_stmt
			
	|	opt_label <T_ENDSELECT>    
            opt_T_IDENT end_of_stmt
			
	;

# R825
# deleted second alternative, nonblock_do_construct, to reduce backtracking, see comments for R835 on how
# termination of nested loops must be handled.
do_construct
	:	block_do_construct
            
	;

# R826
# do_block replaced by block
block_do_construct
	:	do_stmt
		block
		end_do
            
	;

# R827
# label_do_stmt and nonlabel_do_stmt inlined
do_stmt
# init{...}
# after{...}
	:	opt_label opt_T_IDENT__T_COLON <T_DO> 
			opt_T_DIGIT_STRING 
			opt_loop_control end_of_stmt
				
	;

# R828
# <T_IDENT> inlined for do_construct_name
# <T_DIGIT_STRING> inlined for label
label_do_stmt
# init{...}
# after{...}
	:	opt_label opt_T_IDENT__T_COLON 
			<T_DO> <T_DIGIT_STRING> opt_loop_control 
            end_of_stmt
			
	;

# R829 inlined in R827
# <T_IDENT> inlined for do_construct_name

# R831
# do_variable is scalar-int-variable-name
do_variable
	:	<T_IDENT>
            
	;

# R832 do_block was block inlined in R826

# R833
# TODO continue-stmt is ambiguous with same in action statement, check 
# there for label and if
# label matches do-stmt label, then match end-do
# do_term_action_stmt added to allow block_do_construct to cover 
# nonblock_do_construct as well
end_do
# after{...}
	:	end_do_stmt
	|	do_term_action_stmt
	;

# R834
# <T_IDENT> inlined for do_construct_name
end_do_stmt
# init{...}
# after{...}
	: opt_label <T_END> <T_DO> opt_T_IDENT 
            end_of_stmt
			
	| opt_label <T_ENDDO>    opt_T_IDENT 
            end_of_stmt
			
	;

# R835 nonblock_do_construct deleted as it was combined with 
# block_do_construct to reduce backtracking
# Second alternative, outer_shared_do_construct (nested loops sharing a 
# termination label) is ambiguous
# with do_construct in do_body, so deleted.  Loop termination is coordinated with
# the scanner to unwind nested loops sharing a common termination statement 
# (see do_term_action_stmt).

# R836 action_term_do_construct deleted because nonblock_do_construct 
# combined with block_do_construct to reduce backtracking

# R837 do_body deleted because nonblock_do_construct combined with 
# block_do_construct to reduce backtracking

# R838
# C826 (R842) A do-term-shared-stmt shall not be a goto-stmt, a return-stmt, 
# a stop-stmt, an exit-stmt, a cyle-stmt, an end-function-stmt, an 
# end-subroutine-stmt, an end-program-stmt, or an arithmetic-if-stmt.
do_term_action_stmt
# init{...}
# after{...}
    # for a labeled statement which closes a DO, we insert a <T_LABEL_DO_TERMINAL> during the Sale's prepass.
    :   label <T_LABEL_DO_TERMINAL> 
         | option_for_do_term_action_stmt3            
                                        
    # for an outer shared DO closed implicitly, we insert a <T_LABEL_DO_TERMINAL_INSERTED> during the Sale's prepass.
    # the inserted token's text is the closing statement's label.
    | <T_LABEL_DO_TERMINAL_INSERTED>
            
	;

# R839 outer_shared_do_construct removed because it caused ambiguity in 
# R835 (see comment in R835)

# R840 shared_term_do_construct deleted (see comments for R839 and R835)

# R841 inner_shared_do_construct deleted (see comments for R839 and R835)

# R842 do_term_shared_stmt deleted (see comments for R839 and R835)

# R843
# <T_IDENT> inlined for do_construct_name
cycle_stmt
# init{...} 
# after{...}
	:	opt_label <T_CYCLE> opt_T_IDENT end_of_stmt
			
	;

# R844
# <T_IDENT> inlined for do_construct_name
exit_stmt
# init{...}
# after{...}
	:	opt_label <T_EXIT> opt_T_IDENT end_of_stmt
			
	;

# R845
goto_stmt
# init{...}
# after{...}
   :   opt_label
       option_for_goto_stmt
       <T_DIGIT_STRING>  end_of_stmt
          
   ;

# R846
# ERR_CHK 846 scalar_int_expr replaced by expr
computed_goto_stmt
# init{...}
# after{...}
	:	opt_label
		option_for_goto_stmt
            <T_LPAREN> label_list <T_RPAREN> opt_T_COMMA expr end_of_stmt
			
	;

# The ASSIGN statement is a deleted feature.
assign_stmt 
# after{...}
    :   opt_label <T_ASSIGN> label <T_TO> name end_of_stmt 
            
    ;

# The assigned GOTO statement is a deleted feature.
assigned_goto_stmt
# init{...}
# after{...}
    :   opt_label option_for_goto_stmt
            name opt_T_COMMA__stmt_label_list end_of_stmt
            
    ;

# Used with assigned_goto_stmt (deleted feature)
stmt_label_list
    :   <T_LPAREN> label star_T_COMMA__label <T_RPAREN> 
            
    ;

# The PAUSE statement is a deleted feature.
pause_stmt
# init{...}
# after{...}
   :   opt_label <T_PAUSE> opt_label_or_char_literal_constant end_of_stmt 
            
   ;

# R847
# ERR_CHK 847 scalar_numeric_expr replaced by expr
arithmetic_if_stmt
# after{...}
	:	opt_label <T_ARITHMETIC_IF_STMT> <T_IF>
		<T_LPAREN> expr <T_RPAREN> label
		<T_COMMA> label
		<T_COMMA> label end_of_stmt
			
	;

# R848 continue_stmt
continue_stmt
# init{...}
# after{...}
    :	opt_label <T_CONTINUE> end_of_stmt
			 
    ;

# R849
stop_stmt
# init{...}
# after{...}
	:	opt_label <T_STOP> opt_stop_code 
            end_of_stmt
			
	;

# R850
# ERR_CHK 850 <T_DIGIT_STRING> must be 5 digits or less
stop_code
    : scalar_char_constant
        
#     | Digit ( Digit ( Digit opt_Digit__opt_Digit)?)?
    | <T_DIGIT_STRING>
    	 
    ;

#
# R856-F08 errorstop-stmt
# is ERROR STOP [ stop-code ]
#

######
# R856-F08
#
errorstop_stmt
# init{...}
# after{...}
   :   opt_label <T_ERROR> <T_STOP> opt_stop_code 
       end_of_stmt
          
   ;

#
# R858-F08 sync-all-stmt
# is SYNC ALL [([ sync-stat-list ])]
#
 
######
# R858-F08
#
sync_all_stmt
# init{...}
# after{...}
   :   opt_label <T_SYNC> <T_ALL>
       opt_T_LPAREN__T_RPAREN end_of_stmt
             
   |   opt_label <T_SYNC> <T_ALL>
       <T_LPAREN> sync_stat_list <T_RPAREN> end_of_stmt
             
   ;


#
# R859-F08 sync-stat
# is  stat-variable
# or  errmsg-variable
#
 
######
# R859-F08
#
sync_stat
    :    <T_IDENT> <T_EQUALS> expr    # expr is a stat-variable or an errmsg-variable
             
             
    ;

sync_stat_list
# init{...}
   :       
       sync_stat  star_T_COMMA__sync_stat
           
   ;


#
# R860-F08 sync-images-stmt
# is SYNC IMAGES ( image-set [, sync-stat-list ])
#
 
######
# R860-F08
#
sync_images_stmt
# init{...}
# after{...}
   :   opt_label <T_SYNC> <T_IMAGES>
       <T_LPAREN> image_set opt_T_COMMA__sync_stat_list <T_RPAREN>
       end_of_stmt
             
   ;


#
# R861-F08 image-set
# is int-expr
# or *
#
 
######
# R861-F08
#
image_set
# init{...}
   :   expr 
             
   |   <T_ASTERISK>
             
   ;


#
# R862-F08 sync-memory-stmt
# is SYNC MEMORY [([ sync-stat-list ])]
#
 
######
# R862-F08
#
sync_memory_stmt
# init{...}
# after{...}
   :   opt_label <T_SYNC> <T_MEMORY>
       opt_T_LPAREN__T_RPAREN end_of_stmt
             
   |   opt_label <T_SYNC> <T_MEMORY>
       <T_LPAREN> sync_stat_list <T_RPAREN> end_of_stmt
             
   ;


#
# R863-F08 lock-stmt
# is LOCK ( lock-variable [, lock-stat-list ])
#
 
######
# R863-F08
#
# ERR_CHK 863 lock_variable replaced by variable
lock_stmt
# init{...}
# after{...}
    :    opt_label <T_LOCK> <T_LPAREN> variable
             opt_T_COMMA__lock_stat_list <T_RPAREN>
             end_of_stmt
             
    ;

#
# R864-F08 lock-stat
# is  scalar-logical-variable
# or sync-stat
#
 
######
# R864-F08
#
# TODO - replace expr with scalar_logical_variable
lock_stat 
   :   <T_ACQUIRED_LOCK> <T_EQUALS> expr    # expr is a scalar-logical-variable
          
   |   sync_stat
   ;

lock_stat_list
# init{...}
    :       
        lock_stat  star_T_COMMA__lock_stat
            
    ;

#
# R865-F08 unlock-stmt
# is UNLOCK ( lock-variable [, lock-stat-list ])
#
 
######
# R865-F08
#
# ERR_CHK 865 lock_variable replaced by expr
unlock_stmt
# init{...}
# after{...}
   :   opt_label
       <T_UNLOCK> <T_LPAREN> variable opt_T_COMMA__sync_stat_list
                <T_RPAREN> end_of_stmt
           
   ;

scalar_char_constant
    :    char_constant
                
    ;


#----------------------------------------------------------------------------
# additional rules following standard and useful for error checking
#----------------------------------------------------------------------------

scalar_variable
   :   expr
   ;




#*
# Section/Clause 8: Execution control
#


#
# R866-F08 lock-variable
# is scalar-variable
#
 
######
# R866-F08
#
lock_variable
   :   scalar_variable
          
   ;


#*
# Section/Clause 9: Input/output statements
#

# R901
# file_unit_number replaced by expr
# internal_file_variable isa expr so internal_file_variable deleted
io_unit
# after{...}
	:	expr
	|	<T_ASTERISK>
	;

# R902
# ERR_CHK 902 scalar_int_expr replaced by expr
file_unit_number
# after{...}
	:	expr
	;

# R903 internal_file_variable was char_variable inlined (and then deleted) 
# in R901

# R904
open_stmt
# init{...}
# after{...}
	:	opt_label <T_OPEN> <T_LPAREN> connect_spec_list 
            <T_RPAREN> end_of_stmt
			
	;

# R905
# ERR_CHK 905 check expr type with identifier
connect_spec
    : expr
            
    | <T_IDENT>
        
        
        
        
        
        
      <T_EQUALS> expr
            
    ;

connect_spec_list
# init{...}
    :  		
		connect_spec  star_T_COMMA__connect_spec
      		
    ;

# inlined scalar_default_char_expr

# R906 inlined file_name_expr with expr was scalar_default_char_expr

# R907 iomsg_variable inlined as scalar_default_char_variable in 
# R905,R909,R913,R922,R926,R928

# R908
close_stmt
# init{...}
# after{...}
	:	opt_label <T_CLOSE> <T_LPAREN> close_spec_list 
            <T_RPAREN> end_of_stmt
			
	;

# R909
# file_unit_number, scalar_int_variable, iomsg_variable, label replaced 
# by expr
close_spec
	:	expr
            
	|	<T_IDENT>  <T_EQUALS> expr
            
	;

close_spec_list
# init{...}
    :  		
		close_spec  star_T_COMMA__close_spec
      		
    ;

# R910
read_stmt
#options {3;}
# init{...}
# after{...}
#    : =>    (opt_label <T_READ> <T_LPAREN>) 
    : 
            opt_label <T_READ> <T_LPAREN> io_control_spec_list 
            <T_RPAREN> opt_input_item_list end_of_stmt
			
#    | =>    (opt_label <T_READ>) 
    | 
            opt_label <T_READ> format 
            opt_T_COMMA__input_item_list end_of_stmt
			
    ;

# R911
write_stmt
# init{...}
# after{...}
	:	opt_label <T_WRITE> <T_LPAREN> io_control_spec_list 
            <T_RPAREN> opt_output_item_list end_of_stmt
			
	;

# R912
print_stmt
# init{...}
# after{...}
    :    opt_label <T_PRINT> format 
            opt_T_COMMA__output_item_list end_of_stmt
			
    ;

# R913
# ERR_CHK 913 check expr type with identifier
# io_unit and format are both (expr|'*') so combined
io_control_spec
        :	expr
                # true
        			
        |	<T_ASTERISK>
                # true
        			
        |	<T_IDENT>  <T_EQUALS> <T_ASTERISK>
                # true
        			
        |	<T_IDENT>
		    
		    
		    
		    
		    
		<T_EQUALS> expr
                # true
        			
    ;


io_control_spec_list
# init{...}
    :  		
		io_control_spec  star_T_COMMA__io_control_spec
      		
    ;

# R914
# ERR_CHK 914 default_char_expr replaced by expr
# label replaced by <T_DIGIT_STRING> is expr so deleted
format
# after{...}
	:	expr
	|	<T_ASTERISK>
	;

# R915
input_item
# after{...}
	:	variable
	|	io_implied_do
	;

input_item_list
# init{...}
    :  		
		input_item  star_T_COMMA__input_item
      		
    ;

# R916
output_item
#options {true;}
# after{...}
	:	expr
	|	io_implied_do
	;


output_item_list
# init{...}
    :  		
		output_item  star_T_COMMA__output_item
      		
    ;

# R917
io_implied_do
	:	<T_LPAREN> io_implied_do_object io_implied_do_suffix <T_RPAREN>
            
	;

# R918
# expr in output_item can be variable in input_item so input_item deleted
io_implied_do_object
	:	output_item
            
	;

io_implied_do_suffix
#options {true;}
	:	<T_COMMA> io_implied_do_object io_implied_do_suffix
	|	<T_COMMA> io_implied_do_control
	;

# R919
# ERR_CHK 919 scalar_int_expr replaced by expr
io_implied_do_control
# init{...}
    : do_variable <T_EQUALS> expr <T_COMMA> expr opt_T_COMMA__expr
            
    ;

# R920
# TODO: remove this?  it is never called.
dtv_type_spec
	:	<T_TYPE>
		<T_LPAREN>
		derived_type_spec
		<T_RPAREN>
            
	|	<T_CLASS>
		<T_LPAREN>
		derived_type_spec
		<T_RPAREN>
            
	;

# R921
wait_stmt
# init{...}
# after{...}
	:	opt_label <T_WAIT> <T_LPAREN> wait_spec_list <T_RPAREN> 
            end_of_stmt
			
	;

# R922
# file_unit_number, scalar_int_variable, iomsg_variable, label replaced 
# by expr
wait_spec
	:	expr
            
	|	<T_IDENT>  
            <T_EQUALS> expr
            
	;


wait_spec_list
# init{...}
    :  		
		wait_spec  star_T_COMMA__wait_spec
      		
    ;

# R923
backspace_stmt
#options {3;}
# init{...}
# after{...}
#	: =>	(opt_label <T_BACKSPACE> <T_LPAREN>) 
	: 
            opt_label <T_BACKSPACE> <T_LPAREN> position_spec_list 
            <T_RPAREN> end_of_stmt
			
#	| =>	(opt_label <T_BACKSPACE>) 
	| 
            opt_label <T_BACKSPACE> file_unit_number end_of_stmt
			
	;

# R924
endfile_stmt
#options {3;}
# init{...}
# after{...}
#	: =>	(opt_label <T_END> <T_FILE> <T_LPAREN>) 
	: 
            opt_label <T_END> <T_FILE> <T_LPAREN> position_spec_list 
            <T_RPAREN> end_of_stmt
			
#	| =>	(opt_label <T_ENDFILE> <T_LPAREN>) 
	| 
            opt_label <T_ENDFILE> <T_LPAREN> position_spec_list 
            <T_RPAREN> end_of_stmt
			
#	| =>	(opt_label <T_END> <T_FILE>) 
	| 
            opt_label <T_END> <T_FILE> file_unit_number end_of_stmt
			
#	| =>	(opt_label <T_ENDFILE>) 
	| 
            opt_label <T_ENDFILE> file_unit_number end_of_stmt
			
	;

# R925
rewind_stmt
#options {3;}
# init{...}
# after{...}
#	: =>	(opt_label <T_REWIND> <T_LPAREN>) 
	: 
            opt_label <T_REWIND> <T_LPAREN> position_spec_list 
            <T_RPAREN> end_of_stmt
			
#	| =>	(opt_label <T_REWIND>) 
	| 
            opt_label <T_REWIND> file_unit_number end_of_stmt
			
	;

# R926
# file_unit_number, scalar_int_variable, iomsg_variable, label replaced 
# by expr
position_spec
	:	expr
            
	|	<T_IDENT>  <T_EQUALS> expr
            
    ;

position_spec_list
# init{...}
    :  		
		position_spec  star_T_COMMA__position_spec
      		
    ;

# R927
flush_stmt
#options {3;}
# init{...} 
# after{...}
#	: =>	(opt_label <T_FLUSH> <T_LPAREN>) 
	: 
            opt_label <T_FLUSH> <T_LPAREN> flush_spec_list 
            <T_RPAREN> end_of_stmt
			
#	| =>	(opt_label <T_FLUSH>) 
	| 
            opt_label <T_FLUSH> file_unit_number end_of_stmt
			
	;

# R928
# file_unit_number, scalar_int_variable, iomsg_variable, label replaced 
# by expr
flush_spec
	:	expr
            
	|	<T_IDENT>  <T_EQUALS> expr
            
    ;

flush_spec_list
# init{...}
    :  		
		flush_spec  star_T_COMMA__flush_spec
      		
    ;

# R929
inquire_stmt
# init{...}
# after{...}
	:	opt_label <T_INQUIRE> <T_LPAREN> inquire_spec_list 
            <T_RPAREN> end_of_stmt
            
	|	opt_label <T_INQUIRE_STMT_2> 
            <T_INQUIRE> <T_LPAREN> <T_IDENT>  <T_EQUALS> 
            scalar_int_variable <T_RPAREN> output_item_list end_of_stmt
				
	;


# R930
# ERR_CHK 930 file_name_expr replaced by expr
# file_unit_number replaced by expr
# scalar_default_char_variable replaced by designator
inquire_spec
	:	expr
            
	|	<T_IDENT> 
        /*  '=' expr portion, '=' designator portion below 
           
           
            
            
             */
		<T_EQUALS> expr
             
	;

inquire_spec_list
# init{...}
    :  		
		inquire_spec  star_T_COMMA__inquire_spec
      		
    ;

#*
# Section/Clause 10: Input/output editing
#

# R1001
# TODO: error checking: label is required.  accept as optional so we can
# report the error to the user.
format_stmt
# init{...}
# after{...}
	:	opt_label <T_FORMAT> format_specification end_of_stmt
			
	;

# R1002
format_specification
# init{...}
	:	<T_LPAREN> opt_format_item_list <T_RPAREN>
			
	;

# R1003
# r replaced by int_literal_constant replaced by char_literal_constant 
# replaced by <T_CHAR_CONSTANT>
# char_string_edit_desc replaced by <T_CHAR_CONSTANT>
format_item
# init{...}
    :   <T_DATA_EDIT_DESC> 
		    
    |   <T_CONTROL_EDIT_DESC>
		    
    |   <T_CHAR_STRING_EDIT_DESC>
		    
    |   opt_T_DIGIT_STRING <T_LPAREN> 
            format_item_list <T_RPAREN>
		    
    ;

# the comma is not always required.  see J3/04-007, pg. 221, lines
# 17-22
# ERR_CHK
format_item_list
# init{...}
    :  		
		format_item star_opt_T_COMMA__format_item
      		
    ;


# the following rules, from here to the v_list, are the originals.  modifying 
# to try and simplify and make match up with the standard.
# original rules. 02.01.07
# # R1003
# # r replaced by int_literal_constant replaced by char_literal_constant replaced by <T_CHAR_CONSTANT>
# # char_string_edit_desc replaced by <T_CHAR_CONSTANT>
# format_item
# 	:	<T_DIGIT_STRING> data_edit_desc
# 	|	data_plus_control_edit_desc
# 	|	<T_CHAR_CONSTANT>
# 	|	opt_T_DIGIT_STRING <T_LPAREN> format_item_list <T_RPAREN>
# 	;

# format_item_list
#     :    format_item star_T_COMMA__format_item
#     ;

# # R1004 r inlined in R1003 and R1011 as int_literal_constant (then as DIGIT_STRING)
# # C1004 (R1004) r shall not have a kind parameter associated with it

# # R1005
# # w,m,d,e replaced by int_literal_constant replaced by <T_DIGIT_STRING>
# # char_literal_constant replaced by <T_CHAR_CONSTANT>
# # ERR_CHK 1005 matching <T_ID_OR_OTHER> with alternatives will have to be done here
# data_edit_desc
#     : <T_ID_OR_OTHER>  
#       <T_DIGIT_STRING> opt_T_PERIOD__T_DIGIT_STRING
#       opt_T_ID_OR_OTHER__T_DIGIT_STRING
#     | <T_ID_OR_OTHER>  <T_CHAR_CONSTANT> opt_T_LPAREN__v_list__T_RPAREN
#     | <T_ID_OR_OTHER> 
#     ;

# data_plus_control_edit_desc
# 	:	<T_ID_OR_OTHER>  
# 		    <T_DIGIT_STRING> opt_T_PERIOD__T_DIGIT_STRING
# 		    opt_T_ID_OR_OTHER__T_DIGIT_STRING
# 	|	<T_ID_OR_OTHER>  <T_CHAR_CONSTANT> opt_T_LPAREN__v_list__T_RPAREN
# 	|	<T_ID_OR_OTHER> 
# # following only from control_edit_desc
# 	|	opt_T_DIGIT_STRING <T_SLASH>
# 	|	<T_COLON>
# 	|	(<T_PLUS>|<T_MINUS>) <T_DIGIT_STRING> <T_ID_OR_OTHER> 
# 	;

# R1006 w inlined in R1005 as int_literal_constant replaced by <T_DIGIT_STRING>

# R1007 m inlined in R1005 as int_literal_constant replaced by <T_DIGIT_STRING>

# R1008 d inlined in R1005 as int_literal_constant replaced by <T_DIGIT_STRING>

# R1009 e inlined in R1005 as int_literal_constant replaced by <T_DIGIT_STRING>

# R1010 v inlined as signed_int_literal_constant in v_list replaced by (<T_PLUS> or <T_MINUS>) <T_DIGIT_STRING>

v_list
# init{...}
    :  		
		opt_T_PLUS_or_T_MINUS <T_DIGIT_STRING>
			
		star_for_v_list
      		
    ;

# R1011 control_edit_desc inlined/combined in R1005 and data_plus_control_edit_desc
# r replaced by int_literal_constant replaced by <T_DIGIT_STRING>
# k replaced by signed_int_literal_constant replaced by opt_T_PLUS_or_T_MINUS <T_DIGIT_STRING>
# position_edit_desc inlined
# sign_edit_desc replaced by <T_ID_OR_OTHER> was {'SS','SP','S'}
# blank_interp_edit_desc replaced by <T_ID_OR_OTHER> was {'BN','BZ'}
# round_edit_desc replaced by <T_ID_OR_OTHER> was {'RU','RD','RZ','RN','RC','RP'}
# decimal_edit_desc replaced by <T_ID_OR_OTHER> was {'DC','DP'}
# leading <T_ID_OR_OTHER> alternates combined with data_edit_desc in data_plus_control_edit_desc

# R1012 k inlined in R1011 as signed_int_literal_constant
# C1009 (R1012) k shall not have a kind parameter specified for it

# R1013 position_edit_desc inlined in R1011
# n in R1013 was replaced by int_literal_constant replaced by <T_DIGIT_STRING>

# R1014 n inlined in R1013 as int_literal_constant (is <T_DIGIT_STRING>, see C1010)
# C1010 (R1014) n shall not have a kind parameter specified for it

# R1015 sign_edit_desc inlined in R1011 as <T_ID_OR_OTHER> was {'SS','SP','S'}

# R1016 blank_interp_edit_desc inlined in R1011 as <T_ID_OR_OTHER> was {'BN','BZ'}

# R1017 round_edit_desc inlined in R1011 as <T_ID_OR_OTHER> was {'RU','RD','RZ','RN','RC','RP'}

# R1018 decimal_edit_desc inlined in R1011 as <T_ID_OR_OTHER> was {'DC','DP'}

# R1019 char_string_edit_desc was char_literal_constant inlined in R1003 as <T_CHAR_CONSTANT>


#*
# Section/Clause 11: Program units
#


# R1102
# <T_IDENT> inlined for program_name
program_stmt
# init{...} # @init{INIT_TOKEN_NULL(lbl);}
# after{...}
	:	opt_label <T_PROGRAM> <T_IDENT> end_of_stmt
		
	;

# R1103
# <T_IDENT> inlined for program_name
end_program_stmt
# init{...}
# after{...}
	:	opt_label <T_END> <T_PROGRAM> opt_T_IDENT 
            end_of_stmt
			
	|	opt_label <T_ENDPROGRAM> opt_T_IDENT 
            end_of_stmt
			
	|	opt_label <T_END> end_of_stmt
			
	;

	
# R1104
# C1104 (R1104) A module specification-part shall not contain a 
# stmt-function-stmt, an entry-stmt or a format-stmt
# specification_part made non-optional to remove END ambiguity (as can 
# be empty)
module
# after{...}
	:	module_stmt
		specification_part
		opt_module_subprogram_part
		end_module_stmt
	;

# R1105
module_stmt
# init{...}
# after{...}
    :    opt_label
         <T_MODULE>      <T_IDENT>
       opt_T_IDENT__T_IDENT
         end_of_stmt

;

# R1106
end_module_stmt
# init{...}
# after{...}
    :  opt_label <T_END> <T_MODULE> opt_T_IDENT 
            end_of_stmt
            
    |  opt_label <T_ENDMODULE> opt_T_IDENT 
            end_of_stmt
        
    |  opt_label <T_END> end_of_stmt
            
    ;


#
# R1107-F08 module-subprogram-part
# is   contains-stmt
# [ module-subprogram ] ...
#

######
# R1107-F08
#
module_subprogram_part
# init{...}
   :   contains_stmt
       star_module_subprogram
           
   ;


#
# R1108-F08 module-subprogram
# is   function-subprogram
# or   subroutine-subprogram
# or   separate-module-subprogram   # NEW_TO_F2008
#

######
# R1108-F08
#
# modified to factor optional prefix
#
module_subprogram
# init{...}
# after{...}
   :   opt_prefix function_subprogram
   |   subroutine_subprogram
   |   separate_module_subprogram
   ;


# R1109
use_stmt
# init{...}
# after{...}
    :    opt_label <T_USE> 
            opt_for_use_stmt <T_IDENT> opt_T_COMMA__rename_list end_of_stmt
			
    |    opt_label <T_USE> 
            opt_for_use_stmt <T_IDENT> <T_COMMA> <T_ONLY> <T_COLON> opt_only_list 
            end_of_stmt
			
    ;

# R1110
module_nature
	:	<T_INTRINSIC>
            
	|	<T_NON_INTRINSIC>
            
	;

# R1111
# <T_DEFINED_OP> inlined for local_defined_operator and use_defined_operator
# <T_IDENT> inlined for local_name and use_name
rename
	:	<T_IDENT> <T_EQ_GT> <T_IDENT>
            
	|	<T_OPERATOR> <T_LPAREN> <T_DEFINED_OP> <T_RPAREN> <T_EQ_GT>
		<T_OPERATOR> <T_LPAREN> <T_DEFINED_OP> <T_RPAREN>
             
	;

rename_list
# init{...}
    :  		
		rename  star_T_COMMA__rename
      		
    ;

# R1112
# <T_IDENT> inlined for only_use_name
# generic_spec can be <T_IDENT> so <T_IDENT> deleted
only
# init{...}
# after{...}
	:	generic_spec 
	|	rename       
	;

only_list
# init{...}
    :  		
		only  star_T_COMMA__only
      		
    ;

# R1113 only_use_name was use_name inlined as <T_IDENT>

# R1114 inlined local_defined_operator in R1111 as <T_DEFINED_OP>

# R1115 inlined use_defined_operator in R1111 as <T_DEFINED_OP>

#
# R1116-F08 submodule
# is submodule-stmt
# [ specification-part ]
# [ module-subprogram-part ]
# end-submodule-stmt
#

######
# R1116-F08
#
submodule
# init{...}
# after{...}
   :   submodule_stmt
       specification_part  # non-optional as can be empty
       opt_module_subprogram_part
       end_submodule_stmt
   ;

#
# R1117-F08 submodule-stmt
# is SUBMODULE ( parent-identifier) submodule-name
#

######
# R1117-F08
#
submodule_stmt
# init{...}
# after{...}
   :       
       opt_label
       <T_SUBMODULE> <T_LPAREN> parent_identifier <T_RPAREN>
       name  end_of_stmt
           
   ;


#
# R1118-F08 parent-identifier
# is ancestor-module-name [ : parent-submodule-name ]
#

######
# R1118-F08
#
parent_identifier
# init{...}
   :   name 
       opt_T_IDENT
           
   ;


#
# R1119-F08 end-submodule-stmt
# is END [ SUBMODULE [ submodule-name ] ]
#

######
# R1119-F08
#
end_submodule_stmt
# init{...}
# after{...}
   :   opt_label
       <T_END> opt_T_SUBMODULE__opt_name
       end_of_stmt
           
   ;

# R1116
# specification_part made non-optional to remove END ambiguity (as can 
# be empty).
block_data
# after{...}
	:	block_data_stmt
		specification_part
		end_block_data_stmt
	;

# R1117
block_data_stmt
# init{...}
# after{...}
   :   opt_label
       <T_BLOCK> <T_DATA> opt_T_IDENT end_of_stmt
           
   |   opt_label
       <T_BLOCKDATA>  opt_T_IDENT end_of_stmt
           
   ;

# R1118
end_block_data_stmt
# init{...}
# after{...}
	:   opt_label <T_END> <T_BLOCK> <T_DATA> 
            opt_T_IDENT end_of_stmt
			
	|   opt_label <T_ENDBLOCK> <T_DATA>    
            opt_T_IDENT end_of_stmt
			
	|   opt_label <T_END> <T_BLOCKDATA>    
            opt_T_IDENT end_of_stmt
			
	|   opt_label <T_ENDBLOCKDATA>       
            opt_T_IDENT end_of_stmt
			
	|	opt_label <T_END> end_of_stmt
			
	;

#*
# Section/Clause 12: Procedures
#

# R1201
interface_block
# after{...}
	:	interface_stmt
		star_interface_specification
		end_interface_stmt
	;

# R1202
interface_specification
# after{...}
	:	interface_body
	|	procedure_stmt
	;

# R1203 Note that the last argument to the action specifies whether this
# is an abstract interface or not.
interface_stmt
# init{...}
# after{...}
	:		
		opt_label <T_INTERFACE> opt_generic_spec end_of_stmt
			
	|	opt_label <T_ABSTRACT> <T_INTERFACE> end_of_stmt
			
	;

# R1204
end_interface_stmt
# init{...}
# after{...}
	: opt_label <T_END> <T_INTERFACE> opt_generic_spec end_of_stmt
		    
	| opt_label <T_ENDINTERFACE>    opt_generic_spec end_of_stmt
		    
	;

# R1205
# specification_part made non-optional to remove END ambiguity (as can 
# be empty)
interface_body
	:	opt_prefix function_stmt specification_part end_function_stmt
            
	|	subroutine_stmt specification_part end_subroutine_stmt
            
	;

# R1206
# generic_name_list substituted for procedure_name_list
procedure_stmt
# init{...} 
# after{...}
	:	opt_label opt_T_MODULE 
            <T_PROCEDURE> generic_name_list end_of_stmt
			
	;

# R1207
# <T_IDENT> inlined for generic_name
generic_spec
	:	<T_IDENT>
			
	|	<T_OPERATOR> <T_LPAREN> defined_operator <T_RPAREN>
			
	|	<T_ASSIGNMENT> <T_LPAREN> <T_EQUALS> <T_RPAREN>
			
	|	defined_io_generic_spec
            
	;

# R1208
# TODO - the name has been changed from dtio_generic_spec to defined_io_generic_spec
# change the actions and enums as well
defined_io_generic_spec
	:	<T_READ> <T_LPAREN> <T_FORMATTED> <T_RPAREN>
		
	|	<T_READ> <T_LPAREN> <T_UNFORMATTED> <T_RPAREN>
		
	|	<T_WRITE> <T_LPAREN> <T_FORMATTED> <T_RPAREN>
		
	|	<T_WRITE> <T_LPAREN> <T_UNFORMATTED> <T_RPAREN>
		
	;

# R1209
# generic_name_list substituted for import_name_list
import_stmt
# init{...}
# after{...}
    :    opt_label <T_IMPORT> opt_opt_T_COLON_COLON__generic_name_list end_of_stmt
			
    ;

# R1210
# generic_name_list substituted for external_name_list
external_stmt
# init{...} # @init{INIT_TOKEN_NULL(lbl);}
# after{...}
	:	opt_label <T_EXTERNAL> opt_T_COLON_COLON 
            generic_name_list end_of_stmt
			
	;

# R1211
procedure_declaration_stmt
# init{...}
# after{...}
    : opt_label <T_PROCEDURE> <T_LPAREN>
		opt_proc_interface <T_RPAREN>
       	opt_for_procedure_declaration_stmt
		proc_decl_list end_of_stmt
			
    ;

# R1212
# <T_IDENT> inlined for interface_name
proc_interface
	:	<T_IDENT>					
	|	declaration_type_spec	
	;

# R1213
proc_attr_spec
	:	access_spec
            
	|	proc_language_binding_spec
            
	|	<T_INTENT> <T_LPAREN> intent_spec <T_RPAREN>
            
	|	<T_OPTIONAL>	
            
	|	<T_POINTER>	
            
	|	<T_SAVE>		
            
# TODO: are <T_PASS>, <T_NOPASS>, and <T_DEFERRED> correct?
# From R453 binding-attr
	|   <T_PASS> opt_T_LPAREN__T_IDENT__T_RPAREN
            
    |   <T_NOPASS>
            
    |   <T_DEFERRED>
            
    |   proc_attr_spec_extension
	;
  
# language extension point
proc_attr_spec_extension : <T_NO_LANGUAGE_EXTENSION> ;

# R1214
# <T_IDENT> inlined for procedure_entity_name
proc_decl
# init{...}
    :	<T_IDENT> opt_T_EQ_GT__null_init
    		
    ;

proc_decl_list
# init{...}
    :  		
		proc_decl  star_T_COMMA__proc_decl
      		
    ;

# R1215 interface_name was name inlined as <T_IDENT>

# R1216
# generic_name_list substituted for intrinsic_procedure_name_list
intrinsic_stmt
# init{...}
# after{...}
	:	opt_label <T_INTRINSIC>
		opt_T_COLON_COLON
		generic_name_list end_of_stmt
			
	;

# R1217 function_reference replaced by designator_or_func_ref to reduce 
# backtracking

# R1218
# C1222 (R1218) The procedure-designator shall designate a subroutine.
call_stmt
# init{...} 
# after{...}
    :    opt_label <T_CALL> procedure_designator
            opt_T_LPAREN__opt_actual_arg_spec_list__T_RPAREN end_of_stmt
         	
    ;

# R1219
# ERR_CHK 1219 must be (<T_IDENT> | designator <T_PERCENT> <T_IDENT>)
# <T_IDENT> inlined for procedure_name and binding_name
# proc_component_ref is variable <T_PERCENT> <T_IDENT> (variable is designator)
# data_ref subset of designator so data_ref <T_PERCENT> <T_IDENT> deleted
# designator (R603), minus the substring part is data_ref, so designator 
# replaced by data_ref
#R1219 procedure-designator            is procedure-name
#                                      or proc-component-ref
#                                      or data-ref % binding-name
procedure_designator
	:	data_ref
            
	;

# R1220
actual_arg_spec
# init{...}
    :	opt_T_IDENT__T_EQUALS actual_arg
    		
    ;

# TODO - delete greedy?
actual_arg_spec_list
#options{false;}
# init{...}
    :		
    	actual_arg_spec  star_T_COMMA__actual_arg_spec
    		
    ;

# R1221
# ERR_CHK 1221 ensure ( expr | designator ending in <T_PERCENT> <T_IDENT>)
# <T_IDENT> inlined for procedure_name
# expr isa designator (via primary) so variable deleted
# designator isa <T_IDENT> so <T_IDENT> deleted
# proc_component_ref is variable <T_PERCENT> <T_IDENT> can be designator so 
# deleted
actual_arg
# init{...}
	:	expr				
            
	|	<T_ASTERISK> label	
            
	;

# R1222 alt_return_spec inlined as <T_ASTERISK> label in R1221

# R1223
# 1. left factored optional prefix in function_stmt from function_subprogram
# 2. specification_part made non-optional to remove END ambiguity (as can 
# be empty)
function_subprogram
# init{...}
	:	function_stmt
		specification_part
		opt_execution_part
		opt_internal_subprogram_part
		end_function_stmt
            
	;

# R1224
# left factored optional prefix from function_stmt
# generic_name_list substituted for dummy_arg_name_list
function_stmt
# init{...}
# after{...}
    :  		 
		opt_label <T_FUNCTION> <T_IDENT>
		    <T_LPAREN> opt_generic_name_list <T_RPAREN> 
            opt_suffix end_of_stmt
			
	;

# R1225
proc_language_binding_spec
	:	language_binding_spec
            
	;

# R1226 dummy_arg_name was name inlined as <T_IDENT>

# R1227
# C1240 (R1227) A prefix shall contain at most one of each prefix-spec
# C1241 (R1227) A prefix shall not specify both ELEMENTAL AND RECURSIVE
prefix
# init{...}
   :  prefix_spec star_prefix_spec
          
   ;

t_prefix
# init{...}
   :  t_prefix_spec star_t_prefix_spec
           
   ;

# R1226-F08
prefix_spec
   :  declaration_type_spec
          
   |  t_prefix_spec
          
   ;

t_prefix_spec
   :  <T_ELEMENTAL>  
   |  <T_IMPURE>     
   |  <T_MODULE>     
   |  <T_PURE>       
   |  <T_RECURSIVE>  
   |  prefix_spec_extension
   ;

# language extension point
prefix_spec_extension : <T_NO_LANGUAGE_EXTENSION> ;

# R1229
suffix
# init{...}
	:	proc_language_binding_spec opt_for_suffix
            
	|	<T_RESULT> <T_LPAREN> result_name <T_RPAREN> 
            opt_proc_language_binding_spec
            
    ;

result_name
    :    name
            
    ;

# R1230
end_function_stmt
# init{...}
# after{...}
	: opt_label <T_END> <T_FUNCTION> opt_T_IDENT 
        end_of_stmt
		
	| opt_label <T_ENDFUNCTION>    opt_T_IDENT 
        end_of_stmt
		
	| opt_label <T_END> end_of_stmt
		
	;

# R1231
# specification_part made non-optional to remove END ambiguity (as can 
# be empty)
subroutine_subprogram
   :   subroutine_stmt
       specification_part
       opt_execution_part
       opt_internal_subprogram_part
       end_subroutine_stmt
   ;

# R1232
subroutine_stmt
# init{...}
# after{...}
    :		
		opt_label opt_t_prefix <T_SUBROUTINE> 
            <T_IDENT> opt_for_subroutine_stmt end_of_stmt
      		
    ;

# R1233
# <T_IDENT> inlined for dummy_arg_name
dummy_arg
#options{false; false;}
	:	<T_IDENT>		
	|	<T_ASTERISK>	
	;

dummy_arg_list
# init{...}
    :  		
		dummy_arg  star_T_COMMA__dummy_arg
      		
    ;

# R1234
end_subroutine_stmt
# init{...}
# after{...}
    : opt_label <T_END> <T_SUBROUTINE> opt_T_IDENT 
        end_of_stmt
		
    | opt_label <T_ENDSUBROUTINE>    opt_T_IDENT 
        end_of_stmt
		
    | opt_label <T_END> end_of_stmt
		
    ;

# R1235
# <T_INDENT> inlined for entry_name
entry_stmt
# init{...}
# after{...}
    :   opt_label <T_ENTRY> <T_IDENT>
            opt_for_entry_stmt end_of_stmt
            
    ;

# R1236
# ERR_CHK 1236 scalar_int_expr replaced by expr
return_stmt
# init{...} 
# after{...}
	:	opt_label <T_RETURN> opt_expr 
            end_of_stmt
				
	;


#
# R1237-F08 separate-module-subprogram
# is   mp-subprogram-stmt          # NEW_TO_F2008
# [ specification-part ]
# [ execution-part ]
# [ internal-subprogram-part ]
# end-mp-subprogram
#

######
# R1237-F08
#
separate_module_subprogram
# init{...}
# after{...}
   :   mp_subprogram_stmt
          specification_part  # non-optional as can be empty
          opt_execution_part
          opt_internal_subprogram_part
       end_mp_subprogram_stmt
   ;


#
# R1238-F08 mp-subprogram-stmt
# is   MODULE PROCEDURE procedure-name
#

######
# R1238-F08
#
mp_subprogram_stmt
# init{...}
# after{...}
   :   opt_label <T_MODULE> <T_PROCEDURE> name end_of_stmt
          
   ;


#
# R1239-F08 end-mp-subprogram-stmt
# is END [ PROCEDURE [ procedure-name ] ]
#

######
# R1239-F08
#
end_mp_subprogram_stmt
# init{...}
# after{...}
   :   opt_label
       <T_END> opt_T_PROCEDURE__opt_name
       end_of_stmt
           
   |   opt_label
       <T_ENDPROCEDURE> opt_name
       end_of_stmt
           
   ;


# R1237
contains_stmt
# init{...}
# after{...}
	:	opt_label <T_CONTAINS> end_of_stmt
				
	;


# R1238
# ERR_CHK 1239 scalar_expr replaced by expr
# generic_name_list substituted for dummy_arg_name_list
# TODO Hopefully scanner and parser can help work together here to work 
# around ambiguity.
# why can't this be accepted as an assignment statement and then the parser
# look up the symbol for the <T_IDENT> to see if it is a function?
#      Need scanner to send special token if it sees what?
# TODO - won't do a(=3,c) = 2
stmt_function_stmt
# init{...}
# after{...}
	:	opt_label <T_STMT_FUNCTION> <T_IDENT> <T_LPAREN> 
            opt_generic_name_list <T_RPAREN> 
            <T_EQUALS> expr end_of_stmt
			
	;

# added this to have a way to match the <T_EOS> and EOF combinations
end_of_stmt #returns [Token tk]
    : <T_EOS>			
        
        # the (EOF) => EOF is done with lookahead because if it's not there, 
        # then antlr will crash with an internal error while trying to 
        # generate the java code.  (as of 12.11.06)
#    | => (EOF) 
#    | <T_EOF>
        
    ;



star_T_PERCENT__part_ref_no_image_selector : | star_T_PERCENT__part_ref_no_image_selector <T_PERCENT> part_ref_no_image_selector ;

opt_image_selector : | image_selector ;

opt_T_COLON__expr : | <T_COLON> expr ;

star_T_COMMA__section_subscript : | star_T_COMMA__section_subscript <T_COMMA> section_subscript ;

star_T_COMMA__cosubscript : | star_T_COMMA__cosubscript <T_COMMA> cosubscript ;

opt_component_initialization : | component_initialization ;

opt_case_value : | case_value ;

opt_T_COMMA__alloc_opt_list : | <T_COMMA> alloc_opt_list ;

opt_T_PROCEDURE__opt_name : | <T_PROCEDURE> opt_name ;

opt_power_op__power_operand : | power_op power_operand ;

opt_internal_subprogram_part : | internal_subprogram_part ;

opt_T_PLUS_or_T_MINUS : | <T_PLUS> | <T_MINUS> ;

opt_T_COLON__expr : | <T_COLON> expr ;

opt_label : | label ;

opt_T_LPAREN__array_spec__T_RPAREN : | <T_LPAREN> array_spec <T_RPAREN> ;

opt_T_COMMA__input_item_list : | <T_COMMA> input_item_list ;

opt_level_3_expr__rel_op : | level_3_expr rel_op ;

opt_power_op__mult_operand : | power_op mult_operand ;

opt_T_ASTERISK__char_length : | <T_ASTERISK> char_length ;

opt_add_operand__mult_op : | add_operand mult_op ;

opt_common_block_name : | common_block_name ;

opt_module_subprogram_part : | module_subprogram_part ;

opt_T_EQ_GT__null_init : | <T_EQ_GT> null_init ;

opt_T_COMMA__rename_list : | <T_COMMA> rename_list ;

opt_T_IDENT : | <T_IDENT> ;

opt_proc_language_binding_spec : | proc_language_binding_spec ;

opt_or_operand__and_op : | or_operand and_op ;

opt_opt_level_2_expr__add_op : | opt_level_2_expr add_op ;

opt_T_LPAREN__deferred_shape_spec_list__T_RPAREN : | <T_LPAREN> deferred_shape_spec_list <T_RPAREN> ;

opt_loop_control : | loop_control ;

opt_T_LPAREN__type_param_spec_list__T_RPAREN : | <T_LPAREN> type_param_spec_list <T_RPAREN> ;

opt_initialization : | initialization ;

opt_format_item_list : | format_item_list ;

opt_expr__defined_binary_op : | expr defined_binary_op ;

opt_T_LPAREN__component_array_spec__T_RPAREN : | <T_LPAREN> component_array_spec <T_RPAREN> ;

opt_prefix : | prefix ;

opt_component_spec_list : | component_spec_list ;

opt_T_LPAREN__T_RPAREN : | <T_LPAREN> <T_RPAREN> ;

opt_keyword__T_EQUALS : | keyword <T_EQUALS> ;

opt_T_EQUALS__expr : | <T_EQUALS> expr ;

opt_T_IDENTS : | <T_IDENTS> ;

opt_equiv_operand__or_op : | equiv_operand or_op ;

opt_T_LPAREN__generic_name_list__T_RPAREN : | <T_LPAREN> generic_name_list <T_RPAREN> ;

opt_T_IDENT__T_COLON : | <T_IDENT> <T_COLON> ;

opt_program_stmt : | program_stmt ;

opt_expr : | expr ;

opt_else_stmt__block : | else_stmt block ;

opt_level_5_expr__equiv_op : | level_5_expr equiv_op ;

opt_T_COMMA__opt_T_KIND__T_EQUALS__expr : | <T_COMMA> opt_T_KIND__T_EQUALS expr ;

opt_execution_part : | execution_part ;

opt_rel_op__level_2_expr : | rel_op level_2_expr ;

opt_input_item_list : | input_item_list ;

opt_T_MINUS__T_IDENT : | <T_MINUS> <T_IDENT> ;

opt_T_COMMA__type_attr_spec_list : | <T_COMMA> type_attr_spec_list ;

opt_not_op : | not_op ;

opt_T_COMMA__binding_attr_list : | <T_COMMA> binding_attr_list ;

opt_T_LPAREN__explicit_shape_spec_list__T_RPAREN : | <T_LPAREN> explicit_shape_spec_list <T_RPAREN> ;

opt_T_LPAREN__substring_range__T_RPAREN : | <T_LPAREN> substring_range <T_RPAREN> ;

opt_T_KIND__T_EQUALS : | <T_KIND> <T_EQUALS> ;

opt_T_COMMA__module_nature : | <T_COMMA> module_nature ;

opt_T_COMMA__access_spec : | <T_COMMA> access_spec ;

opt_T_LBRACKET__coarray_spec__T_RBRACKET : | <T_LBRACKET> coarray_spec <T_RBRACKET> ;

opt_T_IDENT__T_EQ_GT : | <T_IDENT> <T_EQ_GT> ;

opt_opt_T_COLON_COLON__saved_entity_list : | opt_T_COLON_COLON saved_entity_list ;

opt_ac_value_list : | ac_value_list ;

opt_output_item_list : | output_item_list ;

opt_suffix : | suffix ;

opt_T_COMMA__component_attr_spec_list : | <T_COMMA> component_attr_spec_list ;

opt_generic_spec : | generic_spec ;

opt_T_COMMA__stmt_label_list : | <T_COMMA> stmt_label_list ;

opt_T_COMMA : | <T_COMMA> ;

opt_defined_unary_op : | defined_unary_op ;

opt_T_IDENT__T_IDENT : | <T_IDENT> <T_IDENT> ;

opt_T_COMMA__lock_stat_list : | <T_COMMA> lock_stat_list ;

opt_T_LPAREN__opt_actual_arg_spec_list__T_RPAREN : | <T_LPAREN> opt_actual_arg_spec_list <T_RPAREN> ;

opt_T_MODULE : | <T_MODULE> ;

opt_opt_T_COLON_COLON__generic_name_list : | opt_T_COLON_COLON generic_name_list ;

opt_T_COMMA__expr : | <T_COMMA> expr ;

opt_level_2_expr : | level_2_expr ;

opt_stop_code : | stop_code ;

opt_T_LPAREN__v_list__T_RPAREN : | <T_LPAREN> v_list <T_RPAREN> ;

opt_T_EQ_GT__T_IDENT : | <T_EQ_GT> <T_IDENT> ;

opt_T_LEN__T_EQUALS : | <T_LEN> <T_EQUALS> ;

opt_T_UNDERSCORE__kind_param : | <T_UNDERSCORE> kind_param ;

opt_label_or_char_literal_constant : | label | char_literal_constant ;

opt_T_SUBMODULE__opt_name : | <T_SUBMODULE> opt_name ;

opt_opt_T_COLON_COLON__access_id_list : | opt_T_COLON_COLON access_id_list ;

opt_T_IDENT__T_EQUALS : | <T_IDENT> <T_EQUALS> ;

opt_add_op : | add_op ;

opt_type_bound_procedure_part : | type_bound_procedure_part ;

opt_T_LPAREN__substring_range_or_arg_list__T_RPAREN : | <T_LPAREN> substring_range_or_arg_list <T_RPAREN> ;

opt_name : | name ;

opt_T_COMMA__sync_stat_list : | <T_COMMA> sync_stat_list ;

opt_T_COMMA__output_item_list : | <T_COMMA> output_item_list ;

opt_kind_selector : | kind_selector ;

opt_generic_name_list : | generic_name_list ;

opt_t_prefix : | t_prefix ;

opt_T_DIGIT_STRING : | <T_DIGIT_STRING> ;

opt_proc_interface : | proc_interface ;

opt_T_PERIOD__T_DIGIT_STRING : | <T_PERIOD> <T_DIGIT_STRING> ;

opt_char_selector : | char_selector ;

opt_level_3_expr__concat_op : | level_3_expr concat_op ;

opt_actual_arg_spec_list : | actual_arg_spec_list ;

opt_expr_or_T_ASTERISK : | expr | <T_ASTERISK> ;

opt_T_COMMA__dealloc_opt_list : | <T_COMMA> dealloc_opt_list ;

opt_T_COMMA__opt_T_LEN__T_EQUALS__type_param_value : | <T_COMMA> opt_T_LEN__T_EQUALS type_param_value ;

opt_T_LPAREN__opt_component_spec_list__T_RPAREN : | <T_LPAREN> opt_component_spec_list <T_RPAREN> ;

opt_dummy_arg_list : | dummy_arg_list ;

opt_T_ID_OR_OTHER__T_DIGIT_STRING : | <T_ID_OR_OTHER> <T_DIGIT_STRING> ;

opt_T_ASTERISK__data_stmt_constant : | <T_ASTERISK> data_stmt_constant ;

opt_only_list : | only_list ;

opt_T_LPAREN__T_IDENT__T_RPAREN : | <T_LPAREN> <T_IDENT> <T_RPAREN> ;

opt_T_COLON_COLON : | <T_COLON_COLON> ;

opt_binding_private_stmt : | binding_private_stmt ;

star_T_COMMA__access_id : | star_T_COMMA__access_id <T_COMMA> access_id ;

star_T_COMMA__attr_spec : | star_T_COMMA__attr_spec <T_COMMA> attr_spec ;

star_level_5_expr__defined_binary_op : | star_level_5_expr__defined_binary_op level_5_expr defined_binary_op ;

star_T_COMMA__codimension_decl : | star_T_COMMA__codimension_decl <T_COMMA> codimension_decl ;

star_T_COMMA__flush_spec : | star_T_COMMA__flush_spec <T_COMMA> flush_spec ;

star_T_COMMA__forall_triplet_spec : | star_T_COMMA__forall_triplet_spec <T_COMMA> forall_triplet_spec ;

star_T_COMMA__entity_decl : | star_T_COMMA__entity_decl <T_COMMA> entity_decl ;

star_T_COMMA__case_value_range : | star_T_COMMA__case_value_range <T_COMMA> case_value_range ;

star_T_COMMA__T_COLON : | star_T_COMMA__T_COLON <T_COMMA> <T_COLON> ;

star_T_COMMA__lock_stat : | star_T_COMMA__lock_stat <T_COMMA> lock_stat ;

star_and_operand__and_op : | star_and_operand__and_op and_operand and_op ;

star_enumerator_def_stmt : | star_enumerator_def_stmt enumerator_def_stmt ;

star_defined_binary_op__equiv_operand : | star_defined_binary_op__equiv_operand defined_binary_op equiv_operand ;

star_program_unit : | star_program_unit program_unit ;

star_T_COMMA__saved_entity : | star_T_COMMA__saved_entity <T_COMMA> saved_entity ;

star_level_2_expr__concat_op : | star_level_2_expr__concat_op level_2_expr concat_op ;

star_T_COMMA__type_param_spec : | star_T_COMMA__type_param_spec <T_COMMA> type_param_spec ;

star_t_prefix_spec : | star_t_prefix_spec t_prefix_spec ;

star_add_operand__add_op : | star_add_operand__add_op add_operand add_op ;

star_or_op__and_operand : | star_or_op__and_operand or_op and_operand ;

star_T_COMMA__implicit_spec : | star_T_COMMA__implicit_spec <T_COMMA> implicit_spec ;

star_T_COMMA__proc_attr_spec : | star_T_COMMA__proc_attr_spec <T_COMMA> proc_attr_spec ;

star_T_COMMA__label : | star_T_COMMA__label <T_COMMA> label ;

star_T_COMMA__io_control_spec : | star_T_COMMA__io_control_spec <T_COMMA> io_control_spec ;

star_mult_op__power_operand : | star_mult_op__power_operand mult_op power_operand ;

star_forall_body_construct : | star_forall_body_construct forall_body_construct ;

star_proc_binding_stmt : | star_proc_binding_stmt proc_binding_stmt ;

star_T_COMMA__explicit_shape_spec : | star_T_COMMA__explicit_shape_spec <T_COMMA> explicit_shape_spec ;

star_T_COMMA__close_spec : | star_T_COMMA__close_spec <T_COMMA> close_spec ;

star_T_COMMA__pointer_object : | star_T_COMMA__pointer_object <T_COMMA> pointer_object ;

star_T_COMMA__sync_stat : | star_T_COMMA__sync_stat <T_COMMA> sync_stat ;

star_T_COMMA__inquire_spec : | star_T_COMMA__inquire_spec <T_COMMA> inquire_spec ;

star_T_COMMA__type_attr_spec : | star_T_COMMA__type_attr_spec <T_COMMA> type_attr_spec ;

star_opt_T_COMMA__data_stmt_set : | star_opt_T_COMMA__data_stmt_set opt_T_COMMA data_stmt_set ;

star_T_COMMA__rename : | star_T_COMMA__rename <T_COMMA> rename ;

star_case_stmt__block : | star_case_stmt__block case_stmt block ;

star_T_COMMA__component_spec : | star_T_COMMA__component_spec <T_COMMA> component_spec ;

star_T_COMMA__allocate_coshape_spec : | star_T_COMMA__allocate_coshape_spec <T_COMMA> allocate_coshape_spec ;

star_T_COMMA__equivalence_object : | star_T_COMMA__equivalence_object <T_COMMA> equivalence_object ;

star_COMPLEX : | star_COMPLEX <T_COMPLEX> ;

star_T_COMMA__letter_spec : | star_T_COMMA__letter_spec <T_COMMA> letter_spec ;

star_T_COMMA__position_spec : | star_T_COMMA__position_spec <T_COMMA> position_spec ;

star_T_COMMA__ac_value : | star_T_COMMA__ac_value <T_COMMA> ac_value ;

star_T_COMMA__format_item : | star_T_COMMA__format_item <T_COMMA> format_item ;

star_T_COMMA__data_stmt_object : | star_T_COMMA__data_stmt_object <T_COMMA> data_stmt_object ;

star_T_COMMA__data_i_do_object : | star_T_COMMA__data_i_do_object <T_COMMA> data_i_do_object ;

star_T_COMMA__wait_spec : | star_T_COMMA__wait_spec <T_COMMA> wait_spec ;

star_T_COMMA__common_block_object : | star_T_COMMA__common_block_object <T_COMMA> common_block_object ;

star_declaration_construct : | star_declaration_construct declaration_construct ;

star_T_COMMA__association : | star_T_COMMA__association <T_COMMA> association ;

star_type_guard_stmt__block : | star_type_guard_stmt__block type_guard_stmt block ;

star_where_body_construct : | star_where_body_construct where_body_construct ;

star_T_COMMA__enumerator : | star_T_COMMA__enumerator <T_COMMA> enumerator ;

star_T_COMMA__only : | star_T_COMMA__only <T_COMMA> only ;

star_private_or_sequence : | star_private_or_sequence private_or_sequence ;

star_module_subprogram : | star_module_subprogram module_subprogram ;

star_T_COMMA__allocatable_decl : | star_T_COMMA__allocatable_decl <T_COMMA> allocatable_decl ;

star_T_COMMA__connect_spec : | star_T_COMMA__connect_spec <T_COMMA> connect_spec ;

star_concat_op__add_operand : | star_concat_op__add_operand concat_op add_operand ;

star_T_COMMA__binding_attr : | star_T_COMMA__binding_attr <T_COMMA> binding_attr ;

star_else_if_stmt__block : | star_else_if_stmt__block else_if_stmt block ;

star_execution_part_construct : | star_execution_part_construct execution_part_construct ;

star_T_COMMA__input_item : | star_T_COMMA__input_item <T_COMMA> input_item ;

star_T_COMMA__equivalence_set : | star_T_COMMA__equivalence_set <T_COMMA> equivalence_set ;

star_import_stmt : | star_import_stmt import_stmt ;

star_equiv_op__or_operand : | star_equiv_op__or_operand equiv_op or_operand ;

star_T_COMMA__array_spec_element : | star_T_COMMA__array_spec_element <T_COMMA> array_spec_element ;

star_T_COMMA__dealloc_opt : | star_T_COMMA__dealloc_opt <T_COMMA> dealloc_opt ;

star_interface_specification : | star_interface_specification interface_specification ;

star_mult_operand__mult_op : | star_mult_operand__mult_op mult_operand mult_op ;

star_T_PERCENT__part_ref : | star_T_PERCENT__part_ref <T_PERCENT> part_ref ;

star_T_COMMA__target_decl : | star_T_COMMA__target_decl <T_COMMA> target_decl ;

star_T_COMMA__bind_entity : | star_T_COMMA__bind_entity <T_COMMA> bind_entity ;

star_add_op__mult_operand : | star_add_op__mult_operand add_op mult_operand ;

star_T_COMMA__bounds_spec : | star_T_COMMA__bounds_spec <T_COMMA> bounds_spec ;

star_T_COMMA__allocate_object : | star_T_COMMA__allocate_object <T_COMMA> allocate_object ;

star_equiv_operand__equiv_op : | star_equiv_operand__equiv_op equiv_operand equiv_op ;

star_T_COMMA__actual_arg_spec : | star_T_COMMA__actual_arg_spec <T_COMMA> actual_arg_spec ;

star_or_operand__or_op : | star_or_operand__or_op or_operand or_op ;

star_use_stmt : | star_use_stmt use_stmt ;

star_T_COMMA__component_attr_spec : | star_T_COMMA__component_attr_spec <T_COMMA> component_attr_spec ;

star_T_COMMA__T_IDENT : | star_T_COMMA__T_IDENT <T_COMMA> <T_IDENT> ;

star_T_COMMA__type_param_decl : | star_T_COMMA__type_param_decl <T_COMMA> type_param_decl ;

star_T_COMMA__allocation : | star_T_COMMA__allocation <T_COMMA> allocation ;

star_T_COMMA__proc_component_attr_spec : | star_T_COMMA__proc_component_attr_spec <T_COMMA> proc_component_attr_spec ;

star_T_COMMA__data_stmt_value : | star_T_COMMA__data_stmt_value <T_COMMA> data_stmt_value ;

star_component_def_stmt : | star_component_def_stmt component_def_stmt ;

star_T_COMMA__alloc_opt : | star_T_COMMA__alloc_opt <T_COMMA> alloc_opt ;

star_T_COMMA__allocate_shape_spec : | star_T_COMMA__allocate_shape_spec <T_COMMA> allocate_shape_spec ;

star_T_COMMA__named_constant_def : | star_T_COMMA__named_constant_def <T_COMMA> named_constant_def ;

star_prefix_spec : | star_prefix_spec prefix_spec ;

star_T_COMMA__dimension_decl : | star_T_COMMA__dimension_decl <T_COMMA> dimension_decl ;

star_T_COMMA__dummy_arg : | star_T_COMMA__dummy_arg <T_COMMA> dummy_arg ;

star_T_COMMA__proc_decl : | star_T_COMMA__proc_decl <T_COMMA> proc_decl ;

star_T_COMMA__pointer_decl : | star_T_COMMA__pointer_decl <T_COMMA> pointer_decl ;

star_T_COMMA__cray_pointer_assoc : | star_T_COMMA__cray_pointer_assoc <T_COMMA> cray_pointer_assoc ;

star_masked_elsewhere_stmt__star_where_body_construct : | star_masked_elsewhere_stmt__star_where_body_construct masked_elsewhere_stmt star_where_body_construct ;

star_internal_subprogram : | star_internal_subprogram internal_subprogram ;

star_T_COMMA__output_item : | star_T_COMMA__output_item <T_COMMA> output_item ;

star_T_COMMA__bounds_remapping : | star_T_COMMA__bounds_remapping <T_COMMA> bounds_remapping ;

star_opt_T_COMMA__format_item : | star_opt_T_COMMA__format_item opt_T_COMMA format_item ;

star_T_COMMA__component_decl : | star_T_COMMA__component_decl <T_COMMA> component_decl ;

opt_for_char_selector : | <T_COMMA> <T_KIND> <T_EQUALS> expr ;

opt_for_derived_type_stmt : | opt_T_COMMA__type_attr_spec_list <T_COLON_COLON> ;

opt_for_data_component_def_stmt : | opt_T_COMMA__component_attr_spec_list <T_COLON_COLON> ;

opt_for_specific_binding : | opt_T_COMMA__binding_attr_list <T_COLON_COLON> ;

opt_for_type_declaration_stmt : | star_T_COMMA__attr_spec <T_COLON_COLON> ;

opt_for_language_binding_spec : | <T_COMMA> name <T_EQUALS> expr ;

opt_for_array_spec_element : | <T_COLON> opt_expr_or_T_ASTERISK ;

opt_for_where_construct : | elsewhere_stmt star_where_body_construct ;

opt_for_use_stmt : | opt_T_COMMA__module_nature <T_COLON_COLON> ;

opt_for_procedure_declaration_stmt : | star_T_COMMA__proc_attr_spec <T_COLON_COLON> ;

opt_for_suffix : | <T_RESULT> <T_LPAREN> result_name <T_RPAREN> ;

opt_for_subroutine_stmt : | <T_LPAREN> opt_dummy_arg_list <T_RPAREN> opt_proc_language_binding_spec ;

opt_for_entry_stmt : | <T_LPAREN> opt_dummy_arg_list <T_RPAREN> opt_suffix ;

star_for_namelist_stmt : | star_for_namelist_stmt opt_T_COMMA  <T_SLASH> <T_IDENT> <T_SLASH> namelist_group_object_list ;

star_for_common_stmt : | opt_T_COMMA common_block_name common_block_object_list ;

star_for_and_operand : | star_for_and_operand and_op  opt_not_op level_3_expr ;

option_for_select_case_stmt : <T_SELECT> <T_CASE> | <T_SELECTCASE> ;

option_for_do_term_action_stmt1 : <T_END> <T_DO>  | <T_ENDDO> ;

option_for_do_term_action_stmt2 : option_for_do_term_action_stmt1 opt_T_IDENT ;

option_for_do_term_action_stmt3 : action_stmt
         | option_for_do_term_action_stmt2 end_of_stmt ;

option_for_goto_stmt : <T_GO> <T_TO> |  <T_GOTO> ;

star_for_v_list : | star_for_v_list <T_COMMA> opt_T_PLUS_or_T_MINUS <T_DIGIT_STRING> ;"