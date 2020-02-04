#makefile for lab2docalc executable
#Michael Smith February 2020
#This makefile creates the executable from lab2docalc from
#lex file lab2docalc.l and yacc fill lab2docalc.y


all:	lab2docalc #resulting executable 

lab2docalc:	y.tab.c #executable from c file
	gcc y.tab.c -o lab2docalc

y.tab.c:	clean #c file from lex and yacc files
	lex lab2docalc.l
	yacc -d lab2docalc.y

clean:		#clean old files
	rm -f *c *h
