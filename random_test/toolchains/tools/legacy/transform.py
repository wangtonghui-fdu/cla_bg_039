#! /usr/bin/python
# -*- coding: UTF-8 -*- 

import binascii

import sys

import os

sourceFile = sys.argv[1]

src = open(sourceFile,'r')
ins_file = open(sourceFile[0:-4],'wb')
data_file = open(sourceFile[0:-4]+"_datamem",'wb')

line = src.readline()

ins_file.seek(0x400,0)
	

while line:
	
	line=line.strip('\n')

	[linenum,ins] = line.split(',')
	linenum = int(linenum.split('h')[1],16)
	ins = ins.split('h')[1]
	ins = ins.split('_')
	if linenum < 0x200000 :
		#data section
		data_file.seek(linenum,0)
		for i in range(len(ins)-1,-1,-1):
			insn1 = binascii.a2b_hex(ins[i][6:8])
			insn2 = binascii.a2b_hex(ins[i][4:6])
			insn3 = binascii.a2b_hex(ins[i][2:4])
			insn4 = binascii.a2b_hex(ins[i][0:2])

			data_file.write(insn1)
			data_file.write(insn2)
			data_file.write(insn3)
			data_file.write(insn4)

			# print (ins[i],insn1, insn2, insn3, insn4)
	elif linenum >= 0x200400 :
		#code section
		for i in range(len(ins)):
			insn1 = binascii.a2b_hex(ins[i][6:8])
			insn2 = binascii.a2b_hex(ins[i][4:6])
			insn3 = binascii.a2b_hex(ins[i][2:4])
			insn4 = binascii.a2b_hex(ins[i][0:2])

			ins_file.write(insn1)
			ins_file.write(insn2)
			ins_file.write(insn3)
			ins_file.write(insn4)

			# print (ins[i],insn1, insn2, insn3, insn4)
	line = src.readline()
	
	
src.close()
ins_file.close()
data_file.close()
