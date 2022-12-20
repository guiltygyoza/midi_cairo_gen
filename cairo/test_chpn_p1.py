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
    SHIFT_AMOUNT = 5

    starknet = await Starknet.empty()
    print()

    names = ['chpn_p1', 'chpn_p1_music1_1', 'chpn_p1_music1_2', 'chpn_p1_music2_1', 'chpn_p1_music2_2']
    contracts = {}
    for name in names:
        contract = await starknet.deploy(f'{name}.cairo')
        contracts[name] = contract
        print(f'> {name}.cairo deployed')

    ret = await contracts['chpn_p1'].header().call()
    header = felt_array_into_hexstring( ret.result.z )
    print('> header() completed.')

    ret = await contracts['chpn_p1'].tempo().call()
    tempo = felt_array_into_hexstring( ret.result.z )
    print('> tempo() completed.')

    ret = await contracts['chpn_p1'].music_3to6().call()
    music_3to6 = felt_array_into_hexstring( ret.result.z )
    print('> music_3to6() completed.')

    ret = await contracts['chpn_p1_music1_1'].music(shift_amount=SHIFT_AMOUNT).call()
    music1_1 = hybrid_array_into_hexstring( ret.result.z )
    print('> music1_1() completed.')

    ret = await contracts['chpn_p1_music1_2'].music(shift_amount=SHIFT_AMOUNT).call()
    music1_2 = hybrid_array_into_hexstring( ret.result.z )
    print('> music1_2() completed.')

    ret = await contracts['chpn_p1_music2_1'].music(shift_amount=SHIFT_AMOUNT).call()
    music2_1 = hybrid_array_into_hexstring( ret.result.z )
    print('> music2_1() completed.')

    ret = await contracts['chpn_p1_music2_2'].music(shift_amount=SHIFT_AMOUNT).call()
    music2_2 = hybrid_array_into_hexstring( ret.result.z )
    print('> music2_2() completed.')

    concat = header + tempo + music1_1 + music1_2 + music2_1 + music2_2 + music_3to6

    with open('chpn_p1_test.mid', 'wb') as fout:
        fout.write( binascii.unhexlify(concat) )