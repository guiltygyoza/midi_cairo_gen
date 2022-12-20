import sys
import numpy as np
import subprocess
import time
import json
from math import sqrt
from timeit import default_timer as timer
from joblib import delayed, Parallel
import binascii

# utility function to execute shell command and parse result
def subprocess_run (cmd):
	result = subprocess.run(cmd, stdout=subprocess.PIPE)
	result = result.stdout.decode('utf-8')[:-1] # remove trailing newline
	return result

### Note
# Contract address: 0x056e02795bed9acee84052322251f50ec54b2fd1cdbbff7a321fa25ce4e3fe3b
# Transaction hash: 0x62f87ba8c01912cee89afcfbc43182edf687c77d9e8ae922584faacdccbea21
ADDRESS = '0x056e02795bed9acee84052322251f50ec54b2fd1cdbbff7a321fa25ce4e3fe3b'
ABI = 'beethoven_abi.json'
SHIFT_AMOUNT = 15

def _call_cmd (cmd):
	cmd = cmd.split(' ')
	result = subprocess_run(cmd)
	result_split = result.split(' ')
	return result_split

def hexstring_from_array(result_split):
	hex_array = result_split[1:-2]
	last_element = result_split[-2]
	last_length = result_split[-1]
	hexstring = ''
	for e in hex_array:
		hexstr = e[2:] # remove leading '0x'
		hexstring += hexstr.rjust(62, '0')
	hexstr = last_element[2:]
	hexstring += hexstr.rjust( int(last_length), '0')
	return hexstring

def hexstring_from_hybrid_array(result_split):
	hybrid_array = result_split[1:]
	i=0
	hexstring = ''
	while i < len(hybrid_array):
		value_str = hybrid_array[i]
		length = int( hybrid_array[i+1] )
		if value_str[0:2] == '0x':
			hexstr = value_str[2:]
		else:
			value = int(value_str)
			hexstr = hex(value)[2:] # remove leading '0x'
		hexstr = hexstr.rjust(length, '0')
		hexstring += hexstr
		i += 2
	return hexstring

print(f'> Making calls to smart contracts on testnet; changing tempo to 2.66x')
print(f'> ...')
cmd_s = [
	f"starknet call --network=alpha-goerli --address {ADDRESS} --abi {ABI} --function header",
	f"starknet call --network=alpha-goerli --address {ADDRESS} --abi {ABI} --function rest",
	f"starknet call --network=alpha-goerli --address {ADDRESS} --abi {ABI} --function tempo --inputs 3 8"
]
t1 = timer()
results = Parallel(n_jobs=3)(delayed(_call_cmd)(cmd) for cmd in cmd_s)
t2 = timer()
print(f'> {len(cmd_s)} parallel contract calls took {t2-t1} seconds to complete.\n')

hexstring_header = hexstring_from_array(results[0])
hexstring_rest   = hexstring_from_array(results[1])
hexstring_tempo  = hexstring_from_hybrid_array(results[2])

concat = hexstring_header + hexstring_tempo + hexstring_rest
with open('beethoven_from_testnet.mid', 'wb') as fout:
	fout.write( binascii.unhexlify(concat) )

print(f'> midi file assembled. begin synthesis with FluidSynth and grand piano sound font.\n')
#subprocess.run('mv beethoven_from_testnet.mid test'.split(' '), stdout=subprocess.PIPE)
#subprocess.run('python miditoaudio.py --midi-dir test --sf2-dir .'.split(' '), stdout=subprocess.PIPE)

print(f'> synthesis completed. playing the music:\n')
print(f'  Beethoven Op.27 No.2, speed up by 2.66x')
subprocess.run(['afplay', 'test/beethoven_from_testnet.wav'], stdout=subprocess.PIPE)

#########################
# ### header
# print('> header..')
# cmd = f"starknet call --network=alpha-goerli --address {contract_p1['address']} --abi {contract_p1['abi']} " + \
# 	f"--function header"
# cmd = cmd.split(' ')
# result = subprocess_run(cmd)
# result_split = result.split(' ')
# hex_array = result_split[1:-2]
# last_element = result_split[-2]
# last_length = result_split[-1]
# hexstring = ''
# for e in hex_array:
# 	hexstr = e[2:] # remove leading '0x'
# 	hexstring += hexstr.rjust(62, '0')
# hexstr = last_element[2:]
# hexstring += hexstr.rjust( int(last_length), '0')
# hexstring_header = hexstring

# ### tempo
# print('> tempo..')
# cmd = f"starknet call --network=alpha-goerli --address {contract_p1['address']} --abi {contract_p1['abi']} " + \
# 	f"--function tempo"
# cmd = cmd.split(' ')
# result = subprocess_run(cmd)
# result_split = result.split(' ')
# hex_array = result_split[1:-2]
# last_element = result_split[-2]
# last_length = result_split[-1]
# hexstring = ''
# for e in hex_array:
# 	hexstr = e[2:] # remove leading '0x'
# 	hexstring += hexstr.rjust(62, '0')
# hexstr = last_element[2:]
# hexstring += hexstr.rjust( int(last_length), '0')
# hexstring_tempo = hexstring

# ### 3to6
# print('> 3to6..')
# cmd = f"starknet call --network=alpha-goerli --address {contract_p1['address']} --abi {contract_p1['abi']} " + \
# 	f"--function music_3to6"
# cmd = cmd.split(' ')
# result = subprocess_run(cmd)
# result_split = result.split(' ')
# hex_array = result_split[1:-2]
# last_element = result_split[-2]
# last_length = result_split[-1]
# hexstring = ''
# for e in hex_array:
# 	hexstr = e[2:] # remove leading '0x'
# 	hexstring += hexstr.rjust(62, '0')
# hexstr = last_element[2:]
# hexstring += hexstr.rjust( int(last_length), '0')
# hexstring_3to6 = hexstring

# ### 1_1
# print('> 1_1..')
# cmd = f"starknet call --network=alpha-goerli --address {contract_p1_11['address']} --abi {contract_p1_11['abi']} " + \
# 	f"--function music --inputs {SHIFT_AMOUNT}"
# cmd = cmd.split(' ')
# result = subprocess_run(cmd)
# result_split = result.split(' ')
# hybrid_array = result_split[1:]
# i=0
# hexstring = ''
# while i < len(hybrid_array):
# 	value_str = hybrid_array[i]
# 	length = int( hybrid_array[i+1] )
# 	if value_str[0:2] == '0x':
# 		hexstr = value_str[2:]
# 	else:
# 		value = int(value_str)
# 		hexstr = hex(value)[2:] # remove leading '0x'
# 	hexstr = hexstr.rjust(length, '0')
# 	hexstring += hexstr
# 	i += 2
# hexstring_11 = hexstring

# ### 1_2
# print('> 1_2..')
# cmd = f"starknet call --network=alpha-goerli --address {contract_p1_12['address']} --abi {contract_p1_12['abi']} " + \
# 	f"--function music --inputs {SHIFT_AMOUNT}"
# cmd = cmd.split(' ')
# result = subprocess_run(cmd)
# result_split = result.split(' ')
# hybrid_array = result_split[1:]
# i=0
# hexstring = ''
# while i < len(hybrid_array):
# 	value_str = hybrid_array[i]
# 	length = int( hybrid_array[i+1] )
# 	if value_str[0:2] == '0x':
# 		hexstr = value_str[2:]
# 	else:
# 		value = int(value_str)
# 		hexstr = hex(value)[2:] # remove leading '0x'
# 	hexstr = hexstr.rjust(length, '0')
# 	hexstring += hexstr
# 	i += 2
# hexstring_12 = hexstring


# ### 2_1
# print('> 2_1..')
# cmd = f"starknet call --network=alpha-goerli --address {contract_p1_21['address']} --abi {contract_p1_21['abi']} " + \
# 	f"--function music --inputs {SHIFT_AMOUNT}"
# cmd = cmd.split(' ')
# result = subprocess_run(cmd)
# result_split = result.split(' ')
# hybrid_array = result_split[1:]
# i=0
# hexstring = ''
# while i < len(hybrid_array):
# 	value_str = hybrid_array[i]
# 	length = int( hybrid_array[i+1] )
# 	if value_str[0:2] == '0x':
# 		hexstr = value_str[2:]
# 	else:
# 		value = int(value_str)
# 		hexstr = hex(value)[2:] # remove leading '0x'
# 	hexstr = hexstr.rjust(length, '0')
# 	hexstring += hexstr
# 	i += 2
# hexstring_21 = hexstring


# ### 2_2
# print('> 2_2..')
# cmd = f"starknet call --network=alpha-goerli --address {contract_p1_22['address']} --abi {contract_p1_22['abi']} " + \
# 	f"--function music --inputs {SHIFT_AMOUNT}"
# cmd = cmd.split(' ')
# result = subprocess_run(cmd)
# result_split = result.split(' ')
# hybrid_array = result_split[1:]
# i=0
# hexstring = ''
# while i < len(hybrid_array):
# 	value_str = hybrid_array[i]
# 	length = int( hybrid_array[i+1] )
# 	if value_str[0:2] == '0x':
# 		hexstr = value_str[2:]
# 	else:
# 		value = int(value_str)
# 		hexstr = hex(value)[2:] # remove leading '0x'
# 	hexstr = hexstr.rjust(length, '0')
# 	hexstring += hexstr
# 	i += 2
# hexstring_22 = hexstring
