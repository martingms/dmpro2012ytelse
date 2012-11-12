#!/usr/bin/env python

import optparse
import re

# @todo: add support for control core instructions
# @todo: add support for mask bit keyword
# @todo: CISC instructions; mul, branch (lables)

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
		# I-Format instruction
		# Quick translation into R-Format 
		'i' : {
			'addi'	: '000',
			'subi'	: '001',
			'slti'	: '010',
			'andi'	: '011',
			'ori'	: '100',
			'eqi'	: '101'
		},
		# Two operands instructions
		's' : {
			'move' : '000', # move R1 R2
			'sll'	: '110', #  sll R1 R2
			'srl'	: '111'  #  srl R1 R2
		},
		# M-Format instructions
		# Message passing between nodes
		'm' : {
			'send' : '100',
			'store': '101',
			'fwrd' : '110'
		}
	}
}

# Assemble node instruction
def __assembleNodeInstrN__(op, fn, regs, n):
	debug("OP: " + op + ", FN: " + fn + ", REGS: " + regs + ", N: " + str(n))
	bin  = "0" + sep + "0" + sep + op + sep 
	regs = regs.rsplit(" "); 
	
	if regs == ['']: regs = '' # hack for 0 regs
	if len(regs) != n: exit("error: Instruction expects " + str(n) + " input params.")
	
	if op == "001": n = n-1
	
	# Assemble registers
	for i in range(n):
		reg = regs[i]
		if reg in node['regs']:
			bin += node['regs'][reg] + sep
		else: exit("error: Register '" + reg + "' does not exist.")
	
	# Remaining 4-n words
	if op == "001":
		const = regs[2]
		if const.isdigit():
			bin += dec2bin(const, 8) + sep
		else: exit("error: Constant '" + const + "' is not a valid integer.")
	else:
		for i in range(n, 4):
			bin += "0000" + sep
	
	return (bin + fn)

# Assemble a NODE instruction into binary code 
def __assembleNodeInstr__(instr):
	debug("Assembling SIMD Node instruction '" + instr + "'")
	
	instr 		= instr.partition(" ");
	fn 			= instr[0]
	params 	= instr[2]
		
	if fn in node['instr']['r']	: output = __assembleNodeInstrN__("000", node['instr']['r'][fn], params, 3)
	elif fn in node['instr']['i']	: output = __assembleNodeInstrN__("001", node['instr']['i'][fn], params, 3)
	elif fn in node['instr']['s']	: output = __assembleNodeInstrN__("000", node['instr']['s'][fn], params, 2)
	elif fn in node['instr']['m']	: output = __assembleNodeInstrN__(node['instr']['m'][fn], "000", params, 4)
	elif fn == "swap"				: output = __assembleNodeInstrN__("010", "000", params, 2)
	elif fn == "nop"					: output = __assembleNodeInstrN__("000", "000", "", 0)
	else								: exit("error: Unrecognized instruction: '" + fn + " " + params + "'")
	
	debug(output)
	return output

# Assemble a Control Core instruction into binary code 
def __assembleCtrlInstr__(instr):
	return "false"

# Assemble program file
def __assembleInstrFile__(input, output):
	debug("Reading instructions from '" + input + "'...")
	
	r = open(input, 'r')
	w = open(output, 'wb')
	for instr in r:
		debug("Reading line '" + instr + "'")
		instr = re.sub("#[^$]+", "", instr) # remove comments
		instr = instr.strip()
		if instr:
			instr = instr.partition(" ");
			if not instr[2]: exit("error: Invalid instruction {instr[2]}")
			
			# Assemble
			if instr[0] == "node":
				instr = __assembleNodeInstr__(instr[2])
			elif instr[0] == "ctrl":  
				instr = __assembleCtrlInstr__(instr[2])
			else: exit("error: Invalid instruction {instr[1] = " + instr[0] + "}")
			
			# Write
			if sep:
				w.write(instr + '\n')
			else:
				w.write(chr(int(instr[0:8], 2)))
				w.write(chr(int(instr[8:16], 2)))
				w.write(chr(int(instr[16:24], 2)))
		else:
			debug('Skipping empty instruction line')
	r.close()
	w.close()
	
	return "Assembly completed sucessfully. Output is stored in '" + output + "'!"

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
	p.add_option('--ctrl', '-c', help="assemble a single SIMD Control instruction", metavar="INSTR")
	p.add_option('--input', '-i', help="assemble an entire FPGA program file", metavar="INPUT_FILE")
	p.add_option('--output', '-o', default="", help="assembled FPGA program binary file", metavar="OUTPUT_FILE")
	p.add_option('--group', '-d', action="store_true", default=False, help="Group instructions into logical groups for debuging")
	p.add_option('--verbose', '-v', action="store_true", default=False, help="print status messages to stdout")
	options, arguments = p.parse_args()
	
	if options.group: sep = " "
	if options.verbose: verbose = True
	if options.input and not options.output: options.output = re.sub("(\\.\\w+)$", ".bin", options.input)
	
	if options.input				: print __assembleInstrFile__(options.input, options.output)
	elif options.node			: print __assembleNodeInstr__(options.node)
	elif options.ctrl			: print __assembleCtrlInstr__(options.node)
	else							: exit("Unknown command line tool command")

if __name__ == '__main__':
	main()