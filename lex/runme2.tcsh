#!/bin/tcsh -f 
#
#Put lex program into a file, say file.l.
#Compile the lex program with the command:

lex file.l
#This command produces an output file lex.yy.c.
#Compile this output file with the C compiler and the lex library -ll:

gcc lex.yy.c -ll
#The resulting a.out is the lexical processor.
