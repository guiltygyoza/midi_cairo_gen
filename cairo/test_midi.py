import pytest
import os
import binascii
from starkware.starknet.testing.starknet import Starknet
import math

PRIME = 3618502788666131213697322783095070105623107215331596699973092056135872020481
PRIME_HALF = PRIME//2

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

    contract = await starknet.deploy ('ddddd.cairo')
    print(f'> ddddd.cairo deployed.')
    print()

    ret = await contract.header().call()
    header = felt_array_into_hexstring( ret.result.z )
    
    ret = await contract.tempo(tempo_multiplier=2, tempo_divider=3).call()
    tempo = hybrid_array_into_hexstring( ret.result.z )
    
    #ret = await contract.track_tempo_hybrid_array(tempo_multiplier=2, tempo_divider=3).call()
    #track_tempo = hybrid_array_into_hexstring( ret.result.z )

    ret = await contract.music_0().call()
    music_0 = felt_array_into_hexstring( ret.result.z )
    
    #ret = await contract.music_1().call()
    #music_1 = felt_array_into_hexstring( ret.result.z )

    concat = header + tempo + music_0# + music_1

    with open('ddddd.mid', 'wb') as fout:
        fout.write( binascii.unhexlify(concat) )
