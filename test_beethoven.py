import pytest
import os
import binascii
from starkware.starknet.testing.starknet import Starknet
import math

def felt_array_into_hexstring (felt_array):
    hexstring = ''
    last_length = felt_array[-1]
    for felt in felt_array[:-2]:
        hexstr = hex(felt)[2:]
        hexstr = hexstr.rjust(62, '0')
        hexstring += hexstr
    hexstr = hex(felt_array[-2])[2:]
    hexstr = hexstr.rjust(last_length, '0')
    hexstring += hexstr
    return hexstring

def hybrid_array_into_hexstring (hybrid_array):
    assert len(hybrid_array) % 2 == 0 # length is even-number
    hexstring = ''
    i=0
    while i<len(hybrid_array):
        value = hybrid_array[i]
        length = hybrid_array[i+1]
        hexstr = hex(value)[2:]
        hexstr = hexstr.rjust(length, '0')
        hexstring += hexstr
        i += 2
    return hexstring

@pytest.mark.asyncio
async def test_hexstring():
    starknet = await Starknet.empty()
    print()

    contract = await starknet.deploy(f'beethoven.cairo')
    print(f'> beethoven.cairo deployed')

    ret = await contract.header().call()
    header = felt_array_into_hexstring( ret.result.z )
    print('> header() completed.')

    ret = await contract.rest().call()
    rest = felt_array_into_hexstring( ret.result.z )
    print('> rest() completed.')

    ret = await contract.tempo(tempo_multiplier=2, tempo_divider=5).call()
    tempo = hybrid_array_into_hexstring( ret.result.z )
    print('> tempo() completed')

    concat = header + tempo + rest

    with open('beethoven_test.mid', 'wb') as fout:
        fout.write( binascii.unhexlify(concat) )
