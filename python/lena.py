#!/usr/bin/env python
import optparse

# @todo: add support for mask bit keyword
# @todo: special instructions like move, mul and branch

verbose = False
sep  = ""
node = {
	'regs' : {
		'ZERO'		: "0000", 
		'R1'		: "0001", 
		'R2'		: "0010", 
		'R3'		: "0011", 
		'R4'		: "0100", 
		'R5'		: "0101", 
		'R6'		: "0110", 
		'R7'		: "0111", 
		'R8'		: "1000", 
		'R9'		: "1001", 
		'R10'		: "1010", 
		'R11'		: "1011", 
		'R12'		: "1100", 
		'R13' 		: "1101", 
		'R14' 		: "1110", 
		'STATE' 	: "1111"
	},
	'instr' : {
		# R-Format instruction
		'r' : {
			'add'	: '000', 
			'sub'	: '001', 
			'slt'	: '010', 
			'and'	: '011', 
			'or'	: '100', 
			'eq'	: '101', 
			'sll'	: '110',	# move?
			'srl'	: '111'	# move?
		},
		# I-Format instructions
		'i' : {
			'addi' : '000', 
			'subi' : '001', 
			'slti' : '010', 
			'andi' : '011', 
			'ori' 	: '100', 
			'eqi' 	: '101'
		}
	}
}

# Assemble Node R-Instructions
def __assembleNodeInstrR__(fn, parmas):
	bin  = "0" + sep + "0" + sep + "000" + sep 
	regs = parmas.rsplit(" "); 
	
	if (len(regs) == 3):
		for i in regs:
			if i in node['regs']:
				bin += node['regs'][i] + sep
	else: exit("ERROR: R-Format Instructions expects exactly 3 input parameters.")

	bin += "0000" + sep + node['instr']['r'][fn]
	return bin

# Assemble Node I-Instruction
def __assembleNodeInstrI__(fn, parmas):
	bin  = "0" + sep + "0" + sep + "001" + sep 
	regs = parmas.rsplit(" "); 
	
	# @todo check for constant
	if (len(regs) == 3):
		for i in regs:
			if i in node['regs']:
				bin += node['regs'][i] + sep
			elif i.isdigit():
				bin += dec2bin(i, 8) + sep
	else: exit("ERROR: I-Format Instructions expects exactly 3 input parameters.")

	bin += node['instr']['i'][fn]
	return bin

# Assemble a NODE instruction into binary code 
def __assembleNodeInstr__(instr):
	debug("Assembling SIMD Node instruction '" + instr + "'")
	
	instr 		= instr.partition(" ");
	fn 			= instr[0]
	params 	= instr[2]
	
	if fn in node['instr']['r']	: output = __assembleNodeInstrR__(fn, params) # R-Functions
	elif fn in node['instr']['i']	: output = __assembleNodeInstrI__(fn, params) # I-Functions
	else								: exit("ERROR: Unrecognized instruction '" + fn + " " + params + "'")
	
	#debug(output)
	return output

# Print (if verbose)
def debug(str) :
	if verbose:
		print(str)

# Decimal to binary converter
def dec2bin( dec, target ):
	b = bin(int(dec));
	b = b[2:(target+2)]

	# Add target length padding
	for i in range(len(b), target) : b = '0' + b

	return b

# Main function
def main():
	global sep, verbose
	
	p = optparse.OptionParser()
	p.add_option('--node', '-n', default="add R3 R1 R2", help="assemble a single SIMD Node instruction", metavar="INSTR")
	p.add_option('--debug', '-d', action="store_true", default=False, help="")
	p.add_option('--verbose', '-v', action="store_true", default=False, help="print status messages to stdout")
	options, arguments = p.parse_args()
	
	# Debug seperator
	if options.debug: sep = " "
	if options.verbose: verbose = " "
	
	if options.node				: print __assembleNodeInstr__(options.node)
	else							: exit("Unknown command line tool command")

if __name__ == '__main__':
	main()