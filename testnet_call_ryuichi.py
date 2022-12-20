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
# Contract address: 0x056ccc1f82a32ed898ce10cf7a658240608a715090435025afc960f0333ab5c1
# Transaction hash: 0x483f3a03e145c466e0050643eb8d9d58a5bb3afe6c587248f1d9d7566a769b7
ADDRESS = '0x056ccc1f82a32ed898ce10cf7a658240608a715090435025afc960f0333ab5c1'
ABI = 'ryuichi_abi.json'

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

print(f'> Making calls to smart contracts on testnet; changing tempo to 2.66x')
print(f'> ...')
cmd_s = [
	f"starknet call --network=alpha-goerli --address {ADDRESS} --abi {ABI} --function music",
]
t1 = timer()
results = Parallel(n_jobs=3)(delayed(_call_cmd)(cmd) for cmd in cmd_s)
t2 = timer()
print(f'> 1 call took {t2-t1} seconds to complete.\n')

hexstring = hexstring_from_array(results[0])

concat = hexstring
with open('ryuichi_from_testnet.mid', 'wb') as fout:
	fout.write( binascii.unhexlify(concat) )

print(f'> midi file assembled. begin synthesis with FluidSynth and grand piano sound font.\n')
#subprocess.run('mv beethoven_from_testnet.mid test'.split(' '), stdout=subprocess.PIPE)
#subprocess.run('python miditoaudio.py --midi-dir test --sf2-dir .'.split(' '), stdout=subprocess.PIPE)

print(f'> synthesis completed. playing the music:\n')
print(f'  Merry Christmas Mr. Lawrence, by Ryuichi Sakamoto')
subprocess.run(['afplay', 'test/ryuichi_from_testnet.wav'], stdout=subprocess.PIPE)

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
