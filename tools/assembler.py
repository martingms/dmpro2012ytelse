#!/usr/bin/env python

import sys
import optparse
import re

# @todo: add support for mask bit keyword
# @todo: CISC instructions; mul, div?

verbose 	= False
group		= False
modelsim	= False
labels 	= {}
regs 		= {
	'R0'		: '0000',
	'R1'		: '0001', 
	'R2'		: '0010', 
	'R3'		: '0011', 
	'R4'		: '0100', 
	'R5'		: '0101', 
	'R6'		: '0110', 
	'R7'		: '0111', 
	'R8'		: '1000', 
	'R9'		: '1001', 
	'R10'		: '1010', 
	'R11'		: '1011', 
	'R12'		: '1100', 
	'R13' 		: '1101', 
	'R14' 		: '1110',
	'R15'		: '1111',
	'VADDR'		: '1101',
	'VDATA'		: '1110',
	'DMAP'		: '1111',
	'ZERO'		: '0000', 
	'STATE' 	: '1111'
}
instrs 	= {
	# R-Format instruction
	'r' : {
		'add'	: '000', # add R1 R2 R3
		'sub'	: '001', # sub R1 R2 R3
		'slt'	: '010', # sub R1 R2 R3
		'and'	: '011', # and R1 R2 R3
		'or'	: '100', #  or R1 R2 R3
		'eq'	: '101'  #  eq R1 R2 R3
	},
	# I-Format instruction
	# Quick translation into R-Format 
	'i' : {
		'addi'	: '000', # addi R1 R2 CONST
		'subi'	: '001', # subi R1 R2 CONST
		'slti'	: '010', # subi R1 R2 CONST
		'andi'	: '011', # andi R1 R2 CONST
		'ori'	: '100', #  ori R1 R2 CONST
		'eqi'	: '101'  #  eqi R1 R2 CONST
	},
	# Two operands instructions
	's' : {
		'move' 	: '000', # move R1 R2
		'sll'	: '110', #  sll R1 R2
		'srl'	: '111'  #  srl R1 R2
	},
	# Jump / branch instructions
	'j' : {
		'jump'  : '0100', #   jump label
		'beq'	: '0101'  # branch label
	},
	
	# M-Format instructions
	# Message passing between nodes
	'm' : {
		'send' : '100', #  send N S E W
		'store': '101', # store N S E W
		'fwrd' : '110'  #  fwrd N S E W
	}
}

# Assemble ctrl jump / branch
def __assembleCtrlJump__(op, label):
	bin = '1' + op
	if not label: sys.exit("error: Instruction expects jump label.")
	if label not in labels: sys.exit("error: Jump label does not exist.")
	
	addr = dec2bin(labels[label], 16)
	
	return bin + str(addr) + '000'

# Assemble node instruction
def __assembleNodeInstrN__(ctrl, op, fn, params, n):
	bin  = ctrl + op 
	params = params.rsplit(" "); 
	
	if params == ['']: params = '' # hack for 0 regs
	if len(params) != n: sys.exit("error: Instruction expects " + str(n) + " input params.")
	
	if op == '0001': n = n-1
	
	# Assemble registers
	for i in range(n):
		reg = params[i]
		if reg in regs:
			bin += regs[reg]
		else: sys.exit("error: Register '" + reg + "' does not exist.")
	
	# Remaining 4-n words
	if op == '0001':
		const = params[2]
		if const.isdigit():
			bin += dec2bin(const, 8)
		else: sys.exit("error: Constant '" + const + "' is not a valid integer.")
	else:
		for i in range(n, 4):
			bin += '0000'
	
	return (bin + fn)

# Assemble a NODE instruction into binary code 
def __assembleNodeInstr__(instr):
	debug("Node instruction '" + instr + "'...")
	
	instr 		= instr.partition(" ");
	fn 			= instr[0]
	params 	= instr[2]
	
	# ctrl op fn params #params 
	if fn in instrs['r']	: output = __assembleNodeInstrN__('0', '0000', instrs['r'][fn], params, 3)
	elif fn in instrs['i']	: output = __assembleNodeInstrN__('0', '0001', instrs['i'][fn], params, 3)
	elif fn in instrs['s']	: output = __assembleNodeInstrN__('0', '0000', instrs['s'][fn], params, 2)
	elif fn in instrs['m']	: output = __assembleNodeInstrN__('0', '0' + instrs['m'][fn], '000', params, 4)
	elif fn == "swap"		: output = __assembleNodeInstrN__('0', '0010', '000', params, 2)
	elif fn == "nop"		: output = __assembleNodeInstrN__('0', '0000', '000', "", 0)
	else					: sys.exit("error: Unrecognized NODE instruction: '" + fn + " " + params + "'")
	
	return output

# Assemble a Control Core instruction into binary code 
def __assembleCtrlInstr__(instr):
	debug("Ctrl instruction '" + instr + "'...")

	instr 		= instr.partition(" ");
	fn 			= instr[0]
	params 	= instr[2]
	
	# ctrl op fn params #params 
	if fn in instrs['r']	: output = __assembleNodeInstrN__('1', '0000', instrs['r'][fn], params, 3)
	elif fn in instrs['i']	: output = __assembleNodeInstrN__('1', '0001', instrs['i'][fn], params, 3)
	elif fn in instrs['s']	: output = __assembleNodeInstrN__('1', '0000', instrs['s'][fn], params, 2)
	elif fn in instrs['j']	: output = __assembleCtrlJump__(instrs['j'][fn], params)
	elif fn == "lw"			: output = __assembleNodeInstrN__('1', '0010', '000', params, 2)
	elif fn == "nop"		: output = __assembleNodeInstrN__('1', '0000', '000', "", 0)
	else					: sys.exit("error: Unrecognized CTRL instruction: '" + fn + " " + params + "'")
	
	return output

# Assemble program file
def __assembleInstrFile__(input, output):
	global labels
	
	debug("Reading instructions from '" + input + "'...")
	
	addr = 0
	r = open(input, 'r')
	w = open(output, 'wb')
	instructions = r.readlines()

	for i in range(len(instructions)):
		instructions[i] = re.sub("#[^$]+", "", instructions[i]) # remove comments
		instructions[i] = instructions[i].strip()
		if instructions[i]:
			# Check for label
			m = re.search("^(\\w+):$", instructions[i], re.I | re.S)
			if m and m.group(1):
				debug("Label '" + m.group(1) + "' mapped to addr " + str(addr) + "")
				labels[m.group(1)] = addr
				instructions[i] = ""
			else:
				addr += 1
		else:
			debug('Skipping empty instruction line')

	addr = 0

	for instr in instructions:
		if instr:
			instr = instr.partition(" ");
			if not instr[2]: sys.exit("error: Invalid instruction {instr[2] = " + instr[2] + "}")

			# Assemble instruction
			if instr[0] == "node":
				instr = __assembleNodeInstr__(instr[2])
			elif instr[0] == "ctrl":
				instr = __assembleCtrlInstr__(instr[2])
			else: sys.exit("error: Invalid instruction {instr[1] = " + instr[0] + "}")

			# Print Debug
			debug('>' + instr)

			# Write to file
			if group:
				w.write(str(addr) + ' ')
				for i in range(0, len(instr), 4):
					w.write('' + instr[i:i+4] + ' ')
				w.write('\n')
			elif modelsim:
				w.write('IRAM(' + str(addr) + ') <= "' + instr + '";\n')
			else:
				w.write(chr(0))
				w.write(chr(int(instr[0:8], 2)))
				w.write(chr(int(instr[8:16], 2)))
				w.write(chr(int(instr[16:24], 2)))

			# Increment addr
			addr += 1
		
	r.close()
	w.close()
	
	return "Assembly completed sucessfully. Output is stored in '" + output + "'!"

# print (if verbose)
def debug(str) :
	if verbose:
		sys.stderr.write(str + '\n')

# Decimal to binary converter
def dec2bin( dec, target ):
	b = bin(int(dec));
	b = b[2:(target+2)]

	# Add target length padding
	for i in range(len(b), target) : b = '0' + b

	return b

# Main function
def main():
	global group, verbose, modelsim
	
	p = optparse.OptionParser()
	p.add_option('--node', '-n', help="assemble a single SIMD Node instruction", metavar="INSTR")
	p.add_option('--ctrl', '-c', help="assemble a single SIMD Control instruction", metavar="INSTR")
	p.add_option('--input', '-i', help="assemble an entire FPGA program file", metavar="INPUT_FILE")
	p.add_option('--output', '-o', default="", help="assembled FPGA program binary file", metavar="OUTPUT_FILE")
	p.add_option('--group', '-d', action="store_true", default=False, help="Group instructions into logical groups for debuging")
	p.add_option('--modelsim', '-m', action="store_true", default=False, help="Make modelsim instructions")
	p.add_option('--verbose', '-v', action="store_true", default=False, help="print status messages to stdout")
	options, arguments = p.parse_args()
	
	if options.group: group = True
	if options.verbose: verbose = True
	if options.modelsim: modelsim = True
	if options.input and not options.output: options.output = re.sub("(\\.\\w+)$", ".bin", options.input)
	
	if options.input				: sys.stderr.write(__assembleInstrFile__(options.input, options.output)+'\n')
	elif options.node				: sys.stderr.write('> ' + __assembleNodeInstr__(options.node)+'\n')
	elif options.ctrl				: sys.stderr.write('> ' + __assembleCtrlInstr__(options.ctrl)+'\n')
	else							: sys.exit("Unknown command line tool command")

if __name__ == '__main__':
	main()
