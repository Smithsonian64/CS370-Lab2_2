#makefile for lab2docalc executable
#Michael Smith February 2020
#This makefile creates the executable from lab2docalc from
#lex file lab2docalc.l and yacc fill lab2docalc.y
#
#Answers to questions:
#1. File names created by lex: lex.yy.c
#2. File names created by yacc: y.tab.c and y.tab.h
#3. File we do not directly compile lex output because that output needs to
#   sent to yacc and interpreted by it


all:	lab2docalc #resulting executable 

lab2docalc:	y.tab.c #executable from c file
	gcc y.tab.c -o lab2docalc

y.tab.c:	clean #c file from lex and yacc files
	lex lab2docalc.l
	yacc -d lab2docalc.y

clean:		#clean old files
	rm -f *c *h
