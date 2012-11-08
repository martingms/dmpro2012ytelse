#!/usr/bin/env python
import optparse
import re

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
			'add'	: '000', # add R1 R2 R3
			'sub'	: '001', # sub R1 R2 R3
			'slt'	: '010', # slt R1 R2 R3
			'and'	: '011', # and R1 R2 R3
			'or'	: '100', #  or R1 R2 R3
			'eq'	: '101'  #  eq R1 R2 R3
		},
		# I-Format instructions
		'i' : {
			'addi' : '000', # andi R1 R2 C
			'subi' : '001', # subi R1 R2 C
			'slti' : '010', # slti R1 R2 C
			'andi' : '011', # andi R1 R2 C
			'ori' 	: '100', # ori  R1 R2 C
			'eqi' 	: '101'  # eqi  R1 R2 C
		},
		# Two operands instructions
		's' : {
			'move' : '000', # move R1 R2
			'sll'	: '110', #  sll R1 R2
			'srl'	: '111'  #  srl R1 R2
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
	else: exit("Assembler error: R-Format Instructions expects exactly 3 input parameters.")

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
	else: exit("Assembler error: I-Format Instructions expects exactly 3 input parameters.")

	bin += node['instr']['i'][fn]
	return bin

# Special case instructions
def __assembleNodeInstrS__(op, fn, params):
	bin  = "0" + sep + "0" + sep + op + sep 
	regs = params.rsplit(" "); 
	
	# Get ALU function code
	if not fn.isdigit(): fn = node['instr']['s'][fn]
	
	if (len(regs) == 2):
		for i in regs:
			if i in node['regs']:
				bin += node['regs'][i] + sep
	else: exit("Assembler error: Swap and move instructions expects exactly 2 input parameters.")

	bin += "0000" + sep + "0000" + sep + fn
	return bin

# Assemble a NODE instruction into binary code 
def __assembleNodeInstr__(instr):
	debug("Assembling SIMD Node instruction '" + instr + "'")
	
	instr 		= instr.partition(" ");
	fn 			= instr[0]
	params 	= instr[2]
	
	if fn in node['instr']['r']	: output = __assembleNodeInstrR__(fn, params) # R-instructions
	elif fn in node['instr']['i']	: output = __assembleNodeInstrI__(fn, params) # I-instructions
	elif fn in node['instr']['s']	: output = __assembleNodeInstrS__("000", fn, params) # Two operands instructions
	elif fn == "swap"				: output = __assembleNodeInstrS__("010", "000", params) # Swap instruction
	else								: exit("Assembler error: Unrecognized instruction '" + fn + " " + params + "'")
	
	debug(output)
	return output

def __assembleInstrFile__(input, output):
	debug("Reading instructions from '" + input + "'...")
	
	r = open(input, 'r')
	w = open(output, 'w')
	for instr in r:
		instr = re.sub("#[^^]+", "", instr) # remove comments
		instr = instr.strip()
		if instr:
			# @todo: one too many new line (\n) at end of file
			w.write(__assembleNodeInstr__(instr) + '\n')
		else:
			debug('Skipping empty instruction line')
	r.close()
	w.close()
	
	return "Assembly completed and stored in '" + output + "'!"

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
	p.add_option('--node', '-n', help="assemble a single SIMD Node instruction", metavar="INSTR")
	p.add_option('--input', '-i', help="assemble an entire FPGA program file", metavar="INPUT_FILE")
	p.add_option('--output', '-o', default="program.bin", help="assembled FPGA program binary file", metavar="OUTPUT_FILE")
	p.add_option('--debug', '-d', action="store_true", default=False, help="divide instructions into groups for debug")
	p.add_option('--verbose', '-v', action="store_true", default=False, help="print status messages to stdout")
	options, arguments = p.parse_args()
	
	#print options, arguments
	
	# Debug seperator
	if options.debug: sep = " "
	if options.verbose: verbose = " "
	
	if options.input				: print __assembleInstrFile__(options.input, options.output)
	elif options.node			: print __assembleNodeInstr__(options.node)
	else							: exit("Unknown command line tool command")

if __name__ == '__main__':
	main()