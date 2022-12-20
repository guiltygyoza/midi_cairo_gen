import pytest
import os
import binascii
from starkware.starknet.testing.starknet import Starknet
import math
import subprocess

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

@pytest.mark.asyncio
async def test_hexstring():
    starknet = await Starknet.empty()
    print()

    contract = await starknet.deploy(f'ryuichi.cairo')
    print(f'> ryuichi.cairo deployed')

    ret = await contract.music().call()
    music = felt_array_into_hexstring( ret.result.z )
    print('> contract call completed.')

    with open('ryuichi_test.mid', 'wb') as fout:
        fout.write( binascii.unhexlify(music) )
    print(f'> midi file assembled. begin synthesis with FluidSynth and grand piano sound font.')

    print(f'> synthesis completed. playing the music:\n')
    print(f'  Merry Christmas Mr. Lawrence, by Ryuichi Sakamoto\n')
    subprocess.run(['afplay', 'test/ryuichi_test.wav'], stdout=subprocess.PIPE)
