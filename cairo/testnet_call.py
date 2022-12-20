import sys
import numpy as np
import subprocess
import time
import json
from math import sqrt
from timeit import default_timer as timer
import binascii

# utility function to execute shell command and parse result
def subprocess_run (cmd):
	result = subprocess.run(cmd, stdout=subprocess.PIPE)
	result = result.stdout.decode('utf-8')[:-1] # remove trailing newline
	return result

### Note
# Deployed chpn contract (single-contract not manipulable)
# Contract address: 0x06256be759e50534cf5a91168efd22f81e322d318808f5636c08028fc8ba048e
# Transaction hash: 0x1a3209f6ef308b94ae3a2b04a207c478a9b57038c1f131fdc15565e167d5a65

# contract setup
CONTRACT_ADDRESS = '0x06256be759e50534cf5a91168efd22f81e322d318808f5636c08028fc8ba048e'
ABI = 'chpn_abi.json'
FUNC = 'chpn_op25_e1'

PRIME = 3618502788666131213697322783095070105623107215331596699973092056135872020481
PRIME_HALF = PRIME//2

cmd = f"starknet call --network=alpha-goerli --address {CONTRACT_ADDRESS} --abi {ABI} " + \
	f"--function {FUNC}"
cmd = cmd.split(' ')
time_start = timer()
result = subprocess_run(cmd)
time_end = timer()
print(f'> {FUNC} call took {time_end-time_start} sec')
result_split = result.split(' ')
hex_array = result_split[1:-2]
last_element = result_split[-2]
last_length = result_split[-1]
#print(last_element)
#print(len(last_element))
#print(last_length)

hexstring = ''
for e in hex_array:
	hexstr = e[2:] # remove leading '0x'
	hexstring += hexstr.rjust(62, '0')
hexstr = last_element[2:]
hexstring += hexstr.rjust( int(last_length), '0')

with open('chpn_from_testnet.mid', 'wb') as fout:
	fout.write( binascii.unhexlify(hexstring) )