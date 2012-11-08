#!/usr/bin/env python
import optparse

# @todo: add support for mask bit
# @todo: special things like move and mul?

# --node add R3, R1, R2
def __assembleNodeInstr__(instr, debug):
	print instr
	instr = instr.partition(" ");
	fn = instr[0]
	
	if debug: 
		sep = " "
	else: 
		sep = ""

	# Node registers address space
	regs = { 'ZERO' : "0000", 'R1' : "0001", 'R2' : "0010", 'R3' : "0011", 'R4' : "0100", 'R5' : "0101", 'R6' : "0110", 'R7' : "0111", 'R8' : "1000", 'R9' : "1001", 'R10' : "1010", 'R11' : "1011", 'R12' : "1100", 'R13' : "1101", 'R14' : "1110", 'STATE' : "1111" }

	# R-format instructions
	rFormat = {'add' : '000', 'sub' : '001', 'slt' : '010', 'and' : '011', 'or' : '100', 'eq' : '101', 'sll' : '110', 'srl' : '111'}

	# I-format instructions
	iFormat = {'addi' : '000', 'subi' : '001', 'slti' : '010', 'andi' : '011', 'ori' : '100', 'eqi' : '101'}

	# R-instruction assemble
	if fn in rFormat: 
		bin = "0" + sep + "0" + sep + "000" + sep 
		reg = instr[2].rsplit(" "); 
		
		for i in reg:
			if i in regs:
				bin += regs[i] + sep
		
		bin += "0000" + sep + rFormat[fn]
		print bin 	
	
	# I-instruction assemble
	elif fn in iFormat:
		bin = "0" + sep + "0" + sep + "001" + sep 
		reg = instr[2].rsplit(" "); 
		
		for i in reg:
			if i in regs:
				bin += regs[i] + sep
			elif i.isdigit():
				bin += dec2bin(i, 8) + sep
	
		bin += iFormat[fn]
		print bin 	
	
	# Format not found
	else:
		print "command not found"

# Decimal to binary converter
def dec2bin( dec, target ):
	b = bin(int(dec));
	b = b[2:(target+2)]
	
	for i in range(len(b), target):
		b = '0' + b
		
	return b

# Main function
def main():
	p = optparse.OptionParser()
	p.add_option('--node', '-n', default="add R3 R1 R2")
	p.add_option('--debug', '-d', action="store_true", default=False)
	options, arguments = p.parse_args()
	
	if options.node:
			__assembleNodeInstr__(options.node, options.debug)
	else: print "unknown command"

if __name__ == '__main__':
	main()