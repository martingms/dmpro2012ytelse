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
	'ZERO'		: '0000',  # the same as R0
	'R0'		: '0000',  # the same as ZERO
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
<<<<<<< HEAD
	'VADDR'	: '1101',
	'VDATA'	: '1110',
	'DMAP'		: '1111',
	'ZERO'		: '0000', 
	'STATE' 	: '1111'
=======
	'VADDR'		: '1101',  # VGA Address (ctrl)
	'VDATA'		: '1110',  # VGA Data (ctrl)
	'DMA'		: '1111',  # DMA parameters (ctrl)
	'STATE' 	: '1111'   # Node State (simd)
>>>>>>> 0c06fd30f5ddd8bbda88b728f7582c5bb208a27b
}

# DMA Commands
dcmds	= {
	'set_read_active'               : '0100',
    'set_read_base_addr'            : '0101',
    'set_read_horizontal_incr'      : '0110',
    'set_read_vertical_incr'        : '0111',
    'set_write_active'              : '1000',
    'set_write_base_addr'           : '1001',
    'set_write_horizontal_incr'     : '1010',
    'set_write_vertical_incr'       : '1011',
    'start'                         : '0001'
}

instrs 	= {
	# R-Format instructions
	'r' : {
		'add'	: '000', # add R1 R2 R3
		'sub'	: '001', # sub R1 R2 R3
		'slt'	: '010', # sub R1 R2 R3
		'and'	: '011', # and R1 R2 R3
		'or'	: '100', #  or R1 R2 R3
		'eq'	: '101'  #  eq R1 R2 R3
	},
	# I-Format instructions
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
		'jump'  : '0100', #   jump to label
		'branch': '0101', # branch to label
		'beq'	: '0101'  # branch to label
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
def __assembleCtrlJump(op, label):
	bin = '1' + op
	if not label: sys.exit("error: Instruction expects jump label.")
	if label not in labels: sys.exit("error: Jump label does not exist.")
	
	addr = dec2bin(labels[label], 16)
	
	return bin + str(addr) + '000'

# Assemble CTRL DMA comands
def __assembleCtrlDma__(op, cmd):
	bin = '1' + op
	if not cmd: sys.exit("error: Instruction expects DMA command.")
	if cmd not in dcmds: sys.exit("error: DMA comamnd does not exist.")
	
	return bin + '000000000000' + dcmds[cmd] + '000'	
	
# Assemble node instruction
def __assembleNodeInstrN(ctrl, op, fn, params, n):
	bin  = ctrl + op 
	params = params.rsplit(" "); 
	
	if params == ['']: params = '' # hack for 0 regs
	if len(params) != n: sys.exit("error: Instruction expects " + str(n) + " input params.")
	
	if op == '0001' or op =='1001': n = n-1
	
	# Assemble registers
	for i in range(n):
		reg = params[i]
		if reg in regs:
			bin += regs[reg]
		else: sys.exit("error: Register '" + reg + "' does not exist.")
	
	# Remaining 4-n words
	if op == '0001' or op == '1001':
		const = params[2]
		if const.isdigit():
			bin += dec2bin(const, 8)
		else: sys.exit("error: Constant '" + const + "' is not a valid integer.")
	else:
		for i in range(n, 4):
			bin += '0000'
	
	return (bin + fn)

# Assemble a NODE instruction into binary code 
def __assembleNodeInstr(instr):
	debug("Node instruction '" + instr + "'...")
	
	instr 		= instr.partition(" ");
	fn 			= instr[0]
	params 	= instr[2]
	mask		= '0'
	
	# node mask addi R1 R2 R3 R4
	if fn == "mask":
		mask 	= '1'
		instr	= params.partition(" ");
		fn 		= instr[0]
		params = instr[2]

	print(fn + ' ' + params)
	
	# ctrl op fn params #params 
	if fn in instrs['r']	: output = __assembleNodeInstrN('0', mask + '000', instrs['r'][fn], params, 3)
	elif fn in instrs['i']	: output = __assembleNodeInstrN('0', mask + '001', instrs['i'][fn], params, 3)
	elif fn in instrs['s']	: output = __assembleNodeInstrN('0', mask + '000', instrs['s'][fn], params, 2)
	elif fn in instrs['m']	: output = __assembleNodeInstrN('0', mask +  instrs['m'][fn], '000', params, 4)
	elif fn == "swap"		: output = __assembleNodeInstrN('0', mask + '010', '000', params, 2)
	elif fn == "nop"		: output = __assembleNodeInstrN('0', mask + '000', '000', "", 0)
	else					: sys.exit("error: Unrecognized NODE instruction: '" + fn + " " + params + "'")
	
	return output

# Assemble a Control Core instruction into binary code 
def __assembleCtrlInstr(instr):
	debug("Ctrl instruction '" + instr + "'...")

	instr 		= instr.partition(" ");
	fn 			= instr[0]
	params 		= instr[2]
	
	# ctrl op fn params #params 
<<<<<<< HEAD
	if fn in instrs['r']	: output = __assembleNodeInstrN('1', '0000', instrs['r'][fn], params, 3)
	elif fn in instrs['i']	: output = __assembleNodeInstrN('1', '0001', instrs['i'][fn], params, 3)
	elif fn in instrs['s']	: output = __assembleNodeInstrN('1', '0000', instrs['s'][fn], params, 2)
	elif fn in instrs['j']	: output = __assembleCtrlJump(instrs['j'][fn], params)
	elif fn == "lw"			: output = __assembleNodeInstrN('1', '0010', '000', params, 2)
	elif fn == "nop"		: output = __assembleNodeInstrN('1', '0000', '000', "", 0)
=======
	if fn in instrs['r']	: output = __assembleNodeInstrN__('1', '0000', instrs['r'][fn], params, 3)
	elif fn in instrs['i']	: output = __assembleNodeInstrN__('1', '0001', instrs['i'][fn], params, 3)
	elif fn in instrs['s']	: output = __assembleNodeInstrN__('1', '0000', instrs['s'][fn], params, 2)
	elif fn in instrs['j']	: output = __assembleCtrlJump__(instrs['j'][fn], params)
	elif fn == "lw"			: output = __assembleNodeInstrN__('1', '0010', '000', params, 2)
	elif fn == "nop"		: output = __assembleNodeInstrN__('1', '0000', '000', "", 0)
	elif fn == "dma"		: output =  __assembleCtrlDma__('1000', params)
>>>>>>> 0c06fd30f5ddd8bbda88b728f7582c5bb208a27b
	else					: sys.exit("error: Unrecognized CTRL instruction: '" + fn + " " + params + "'")
	
	return output

# Assemble program file
def __assembleInstrFile(input, output):
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
				instr = __assembleNodeInstr(instr[2])
			elif instr[0] == "ctrl":
				instr = __assembleCtrlInstr(instr[2])
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
	b = b[2:] # remove binary prefix
	if len(b) > target: sys.exit("error: Integer overflow")

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
	
<<<<<<< HEAD
	if options.input				: sys.stderr.write(__assembleInstrFile(options.input, options.output)+'\n')
	elif options.node				: sys.stderr.write('> ' + __assembleNodeInstr(options.node)+'\n')
	elif options.ctrl				: sys.stderr.write('> ' + __assembleCtrlInstr(options.ctrl)+'\n')
	else							: sys.exit("Unknown command line tool command")
=======
	if options.input				: sys.stderr.write(__assembleInstrFile__(options.input, options.output)+'\n')
	elif options.node				: sys.stderr.write('> ' + __assembleNodeInstr__(options.node)+'\n')
	elif options.ctrl				: sys.stderr.write('> ' + __assembleCtrlInstr__(options.ctrl)+'\n')
	else							: sys.exit("error: Unknown command line tool command")
>>>>>>> 0c06fd30f5ddd8bbda88b728f7582c5bb208a27b

if __name__ == '__main__':
	main()
