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

### starknet deploy --contract chpn_p1_compiled.json --network alpha-goerli
### starknet deploy --contract chpn_p1_music1_1_compiled.json --network alpha-goerli
### starknet deploy --contract chpn_p1_music1_2_compiled.json --network alpha-goerli
### starknet deploy --contract chpn_p1_music2_1_compiled.json --network alpha-goerli
### starknet deploy --contract chpn_p1_music2_2_compiled.json --network alpha-goerli

### Note
# Deployed chpn contracts (single-contract not manipulable)
# p1
# Contract address: 0x01f3485f8da0380940a8304016cc6a9b39a75858e30e21c747ae74bffcb3c0d9
# Transaction hash: 0x7e1c41b4ada29d2232103b50fb9b43fe529d605f1be1f67a87725377dcde174

# p1 music 1-1
# Contract address: 0x041d432d5d282632255a903cd5e6ca3514fb05a42f61c0a824bf9f0cd246adbc
# Transaction hash: 0x5b4b1dbf40fd2e2f1c7f89c602045098495b426f2c0f8e44029cdb786e2d86e

# p1 music 1-2
# Contract address: 0x01aeb768809043dbbfad10022f4e66ca69a5692767ce14e8bdbeab5816c1a030
# Transaction hash: 0x318e8e251a38ac7d133b1b6c79e9ca86409b319599692f66da7f96d056c70f1

# p1 music 2-1
# Contract address: 0x0265ed0d9adec9efe33f4fea066fc81c671279673b48959d4cd9bca1f177f328
# Transaction hash: 0x1363762b6b829e9ebecb6d197d1f9889da5f9c69309f04275c9323311c4eea4

# p1 music 2-2
# Contract address: 0x03590094bcda911e679867d92132a33923ea48a64ea59c0acba75bf565bed000
# Transaction hash: 0x50bfb251341b0762b04b9647a20f3abd199e97a6a733fc75ae0460df8b15f19

# contract setup
contract_p1 = {
	'address' : '0x01f3485f8da0380940a8304016cc6a9b39a75858e30e21c747ae74bffcb3c0d9',
	'abi' : 'chpn_p1_abi.json'
}

contract_p1_11 = {
	'address' : '0x041d432d5d282632255a903cd5e6ca3514fb05a42f61c0a824bf9f0cd246adbc',
	'abi' : 'chpn_p1_music1_1_abi.json'
}

contract_p1_12 = {
	'address' : '0x01aeb768809043dbbfad10022f4e66ca69a5692767ce14e8bdbeab5816c1a030',
	'abi' : 'chpn_p1_music1_2_abi.json'
}

contract_p1_21 = {
	'address' : '0x0265ed0d9adec9efe33f4fea066fc81c671279673b48959d4cd9bca1f177f328',
	'abi' : 'chpn_p1_music2_1_abi.json'
}

contract_p1_22 = {
	'address' : '0x03590094bcda911e679867d92132a33923ea48a64ea59c0acba75bf565bed000',
	'abi' : 'chpn_p1_music2_2_abi.json'
}

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

print(f'> Making calls to smart contracts on testnet; up-shifting the key by 15 steps.')
print(f'> ...')
cmd_s = [
	f"starknet call --network=alpha-goerli --address {contract_p1['address']} --abi {contract_p1['abi']} --function header",
	f"starknet call --network=alpha-goerli --address {contract_p1['address']} --abi {contract_p1['abi']} --function tempo",
	f"starknet call --network=alpha-goerli --address {contract_p1['address']} --abi {contract_p1['abi']} --function music_3to6",
	f"starknet call --network=alpha-goerli --address {contract_p1_11['address']} --abi {contract_p1_11['abi']} --function music --inputs {SHIFT_AMOUNT}",
	f"starknet call --network=alpha-goerli --address {contract_p1_12['address']} --abi {contract_p1_12['abi']} --function music --inputs {SHIFT_AMOUNT}",
	f"starknet call --network=alpha-goerli --address {contract_p1_21['address']} --abi {contract_p1_21['abi']} --function music --inputs {SHIFT_AMOUNT}",
	f"starknet call --network=alpha-goerli --address {contract_p1_22['address']} --abi {contract_p1_22['abi']} --function music --inputs {SHIFT_AMOUNT}"
]
t1 = timer()
results = Parallel(n_jobs=7)(delayed(_call_cmd)(cmd) for cmd in cmd_s)
t2 = timer()
print(f'> 7 parallel contract calls took {t2-t1} seconds to complete.\n')

hexstring_header = hexstring_from_array(results[0])
hexstring_tempo  = hexstring_from_array(results[1])
hexstring_3to6   = hexstring_from_array(results[2])
hexstring_11 = hexstring_from_hybrid_array(results[3])
hexstring_12 = hexstring_from_hybrid_array(results[4])
hexstring_21 = hexstring_from_hybrid_array(results[5])
hexstring_22 = hexstring_from_hybrid_array(results[6])

concat = hexstring_header + hexstring_tempo + hexstring_11 + hexstring_12 + hexstring_21 + hexstring_22 + hexstring_3to6
with open('chpn_p1_from_testnet.mid', 'wb') as fout:
	fout.write( binascii.unhexlify(concat) )

print(f'> midi file assembled. begin synthesis with FluidSynth and grand piano sound font.\n')
#subprocess.run('mv chpn_p1_from_testnet.mid test'.split(' '), stdout=subprocess.PIPE)
#subprocess.run('python miditoaudio.py --midi-dir test --sf2-dir .'.split(' '), stdout=subprocess.PIPE)

print(f'> synthesis completed. playing the music:\n')
print(f'  Chopin Op.28 No.1, key changed from C Major to E-flat Major (up-shifted by 15 steps)')
subprocess.run(['afplay', 'test/chpn_p1_from_testnet.wav'], stdout=subprocess.PIPE)

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
