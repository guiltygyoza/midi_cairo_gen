def felt_array_into_str (arr):
    string = ""
    i = 0
    for val in arr:
        string += f'    assert [z+{i}] = {val}\n'
        i += 1
    string += f'    length = {len(arr)}\n'
    return string

def chunk_into_program_string (hexstring):
    '''
    last element of the felt array is an integer indicating the hex-length of the last felt value
    '''
    arr = []
    s = hexstring
    while( len(s)>62 ):
        felt_hex = s[0:62]
        arr.append( int(felt_hex, 16) )
        s = s[62:]
    felt_hex = s
    last_length = len(felt_hex)
    arr.append( int(felt_hex, 16) )
    arr.append(last_length)
    
    string = felt_array_into_str(arr)
    return string

def tempo_track_into_program_string (tempo_track):
    string = ""
    d = tempo_track.segs
    i = 0
    for k,v in d.items():
        if type(v)==str:
            integer = int(v, 16)
            length = len(v)
            string += f'    assert [z+{i}] = {integer}\n'
            string += f'    assert [z+{i+1}] = {length}\n'
            i += 2
        else:
            event_integer = int(v['event'], 16)
            event_length  = len(v['event'])
            value_integer = int(v['value'], 16)
            value_length  = len(v['value'])
            assert value_length == 6
            string += f'\n    # Set Tempo at adjusted value\n'
            string += f'    assert [z+{i}] = {event_integer}\n'
            string += f'    assert [z+{i+1}] = {event_length}\n'
            string += f'    tempvar value_ = {value_integer} * tempo_multiplier\n'
            string += f'    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)\n'
            string += f'    assert [z+{i+2}] = adjusted_value\n'
            string += f'    assert [z+{i+3}] = 6\n' # the hex-length of tempo value is always 6
            i += 4
    return string

class CairoProgram:
    def __init__(self):
        program_1 = []
        program_1.append('@view')
        program_1.append('func header {')
        program_1.append('        range_check_ptr')
        program_1.append('    } (')
        program_1 = '\n'.join(program_1)
        
        program_2 = []
        program_2.append('    ) -> (')
        program_2.append('        z_len : felt,')
        program_2.append('        z : felt*')
        program_2.append('    ):')
        program_2.append('    alloc_locals')
        program_2.append('')
        program_2.append('    let (local z) = alloc()')
        program_2.append('')
        program_2 = '\n'.join(program_2)
        
        program_3 = []
        program_3.append('')
        program_3.append('    return (z_len, z)')
        program_3.append('end')
        program_3 = '\n'.join(program_3)
        
        self.program_1 = program_1
        self.program_2 = program_2
        self.program_3 = program_3
    
    def populate_args (self, args):
        self.args = args
        
    def populate_content (self, content):
        self.content = content
    
    def export(self, filename):
        '''
        export program as string
        '''
        self.program = self.program_1 + self.args + self.program_2 + self.content + self.program_3
        program_str = ""
        for line in self.program:
            program_str += line
            program_str += '\n'

        with open(f'{filename}', 'w') as f:
            f.write(program_str)