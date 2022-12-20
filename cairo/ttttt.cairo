%lang starknet
%builtins pedersen range_check
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.math import (unsigned_div_rem)


@view
func header {
        range_check_ptr
    } (



    ) -> (
        z_len : felt,
        z : felt*
    ):
    alloc_locals

    let (local z) = alloc()
    assert [z+0] = 1568433012465980210040715044126976
    assert [z+1] = 28
    let z_len = 2

    return (z_len, z)
end

@view
func tempo {
        range_check_ptr
    } (

        tempo_multiplier : felt,
        tempo_divider : felt


    ) -> (
        z_len : felt,
        z : felt*
    ):
    alloc_locals

    let (local z) = alloc()
    assert [z+0] = 1426484337369910878211
    assert [z+1] = 18

    # Set Tempo at adjusted value
    assert [z+2] = 16732419
    assert [z+3] = 6
    tempvar value_ = 447760 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+4] = adjusted_value
    assert [z+5] = 6
    assert [z+6] = 0
    assert [z+7] = 2
    assert [z+8] = 450568196869051468254021802786398063655821950092328913043999870718961546611
    assert [z+9] = 62
    assert [z+10] = 3390228100037598121898422193660362220237176227214329438803384167936
    assert [z+11] = 56
    assert [z+12] = 450561089954193510708857780073986104865976425676626606822517898647092487791
    assert [z+13] = 62
    assert [z+14] = 167235727747256304960388884754805154804664896815616
    assert [z+15] = 42
    assert [z+16] = 18399460692883671104
    assert [z+17] = 16

    # Set Tempo at adjusted value
    assert [z+18] = 16732419
    assert [z+19] = 6
    tempvar value_ = 451126 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+20] = adjusted_value
    assert [z+21] = 6
    assert [z+22] = 36672
    assert [z+23] = 4

    # Set Tempo at adjusted value
    assert [z+24] = 16732419
    assert [z+25] = 6
    tempvar value_ = 461537 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+26] = adjusted_value
    assert [z+27] = 6
    assert [z+28] = 35072
    assert [z+29] = 4

    # Set Tempo at adjusted value
    assert [z+30] = 16732419
    assert [z+31] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+32] = adjusted_value
    assert [z+33] = 6
    assert [z+34] = 33792
    assert [z+35] = 4

    # Set Tempo at adjusted value
    assert [z+36] = 16732419
    assert [z+37] = 6
    tempvar value_ = 461537 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+38] = adjusted_value
    assert [z+39] = 6
    assert [z+40] = 33600
    assert [z+41] = 4

    # Set Tempo at adjusted value
    assert [z+42] = 16732419
    assert [z+43] = 6
    tempvar value_ = 458015 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+44] = adjusted_value
    assert [z+45] = 6
    assert [z+46] = 36672
    assert [z+47] = 4

    # Set Tempo at adjusted value
    assert [z+48] = 16732419
    assert [z+49] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+50] = adjusted_value
    assert [z+51] = 6
    assert [z+52] = 34048
    assert [z+53] = 4

    # Set Tempo at adjusted value
    assert [z+54] = 16732419
    assert [z+55] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+56] = adjusted_value
    assert [z+57] = 6
    assert [z+58] = 33792
    assert [z+59] = 4

    # Set Tempo at adjusted value
    assert [z+60] = 16732419
    assert [z+61] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+62] = adjusted_value
    assert [z+63] = 6
    assert [z+64] = 34560
    assert [z+65] = 4

    # Set Tempo at adjusted value
    assert [z+66] = 16732419
    assert [z+67] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+68] = adjusted_value
    assert [z+69] = 6
    assert [z+70] = 33280
    assert [z+71] = 4

    # Set Tempo at adjusted value
    assert [z+72] = 16732419
    assert [z+73] = 6
    tempvar value_ = 461537 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+74] = adjusted_value
    assert [z+75] = 6
    assert [z+76] = 34816
    assert [z+77] = 4

    # Set Tempo at adjusted value
    assert [z+78] = 16732419
    assert [z+79] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+80] = adjusted_value
    assert [z+81] = 6
    assert [z+82] = 34304
    assert [z+83] = 4

    # Set Tempo at adjusted value
    assert [z+84] = 16732419
    assert [z+85] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+86] = adjusted_value
    assert [z+87] = 6
    assert [z+88] = 34624
    assert [z+89] = 4

    # Set Tempo at adjusted value
    assert [z+90] = 16732419
    assert [z+91] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+92] = adjusted_value
    assert [z+93] = 6
    assert [z+94] = 36352
    assert [z+95] = 4

    # Set Tempo at adjusted value
    assert [z+96] = 16732419
    assert [z+97] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+98] = adjusted_value
    assert [z+99] = 6
    assert [z+100] = 34880
    assert [z+101] = 4

    # Set Tempo at adjusted value
    assert [z+102] = 16732419
    assert [z+103] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+104] = adjusted_value
    assert [z+105] = 6
    assert [z+106] = 34624
    assert [z+107] = 4

    # Set Tempo at adjusted value
    assert [z+108] = 16732419
    assert [z+109] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+110] = adjusted_value
    assert [z+111] = 6
    assert [z+112] = 34368
    assert [z+113] = 4

    # Set Tempo at adjusted value
    assert [z+114] = 16732419
    assert [z+115] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+116] = adjusted_value
    assert [z+117] = 6
    assert [z+118] = 35840
    assert [z+119] = 4

    # Set Tempo at adjusted value
    assert [z+120] = 16732419
    assert [z+121] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+122] = adjusted_value
    assert [z+123] = 6
    assert [z+124] = 36928
    assert [z+125] = 4

    # Set Tempo at adjusted value
    assert [z+126] = 16732419
    assert [z+127] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+128] = adjusted_value
    assert [z+129] = 6
    assert [z+130] = 34112
    assert [z+131] = 4

    # Set Tempo at adjusted value
    assert [z+132] = 16732419
    assert [z+133] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+134] = adjusted_value
    assert [z+135] = 6
    assert [z+136] = 33536
    assert [z+137] = 4

    # Set Tempo at adjusted value
    assert [z+138] = 16732419
    assert [z+139] = 6
    tempvar value_ = 461537 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+140] = adjusted_value
    assert [z+141] = 6
    assert [z+142] = 34816
    assert [z+143] = 4

    # Set Tempo at adjusted value
    assert [z+144] = 16732419
    assert [z+145] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+146] = adjusted_value
    assert [z+147] = 6
    assert [z+148] = 33856
    assert [z+149] = 4

    # Set Tempo at adjusted value
    assert [z+150] = 16732419
    assert [z+151] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+152] = adjusted_value
    assert [z+153] = 6
    assert [z+154] = 33600
    assert [z+155] = 4

    # Set Tempo at adjusted value
    assert [z+156] = 16732419
    assert [z+157] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+158] = adjusted_value
    assert [z+159] = 6
    assert [z+160] = 38144
    assert [z+161] = 4

    # Set Tempo at adjusted value
    assert [z+162] = 16732419
    assert [z+163] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+164] = adjusted_value
    assert [z+165] = 6
    assert [z+166] = 33536
    assert [z+167] = 4

    # Set Tempo at adjusted value
    assert [z+168] = 16732419
    assert [z+169] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+170] = adjusted_value
    assert [z+171] = 6
    assert [z+172] = 33856
    assert [z+173] = 4

    # Set Tempo at adjusted value
    assert [z+174] = 16732419
    assert [z+175] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+176] = adjusted_value
    assert [z+177] = 6
    assert [z+178] = 33344
    assert [z+179] = 4

    # Set Tempo at adjusted value
    assert [z+180] = 16732419
    assert [z+181] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+182] = adjusted_value
    assert [z+183] = 6
    assert [z+184] = 37120
    assert [z+185] = 4

    # Set Tempo at adjusted value
    assert [z+186] = 16732419
    assert [z+187] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+188] = adjusted_value
    assert [z+189] = 6
    assert [z+190] = 36608
    assert [z+191] = 4

    # Set Tempo at adjusted value
    assert [z+192] = 16732419
    assert [z+193] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+194] = adjusted_value
    assert [z+195] = 6
    assert [z+196] = 33088
    assert [z+197] = 4

    # Set Tempo at adjusted value
    assert [z+198] = 16732419
    assert [z+199] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+200] = adjusted_value
    assert [z+201] = 6
    assert [z+202] = 33280
    assert [z+203] = 4

    # Set Tempo at adjusted value
    assert [z+204] = 16732419
    assert [z+205] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+206] = adjusted_value
    assert [z+207] = 6
    assert [z+208] = 34624
    assert [z+209] = 4

    # Set Tempo at adjusted value
    assert [z+210] = 16732419
    assert [z+211] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+212] = adjusted_value
    assert [z+213] = 6
    assert [z+214] = 33536
    assert [z+215] = 4

    # Set Tempo at adjusted value
    assert [z+216] = 16732419
    assert [z+217] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+218] = adjusted_value
    assert [z+219] = 6
    assert [z+220] = 33280
    assert [z+221] = 4

    # Set Tempo at adjusted value
    assert [z+222] = 16732419
    assert [z+223] = 6
    tempvar value_ = 500000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+224] = adjusted_value
    assert [z+225] = 6
    assert [z+226] = 33280
    assert [z+227] = 4

    # Set Tempo at adjusted value
    assert [z+228] = 16732419
    assert [z+229] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+230] = adjusted_value
    assert [z+231] = 6
    assert [z+232] = 34048
    assert [z+233] = 4

    # Set Tempo at adjusted value
    assert [z+234] = 16732419
    assert [z+235] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+236] = adjusted_value
    assert [z+237] = 6
    assert [z+238] = 33600
    assert [z+239] = 4

    # Set Tempo at adjusted value
    assert [z+240] = 16732419
    assert [z+241] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+242] = adjusted_value
    assert [z+243] = 6
    assert [z+244] = 34112
    assert [z+245] = 4

    # Set Tempo at adjusted value
    assert [z+246] = 16732419
    assert [z+247] = 6
    tempvar value_ = 491803 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+248] = adjusted_value
    assert [z+249] = 6
    assert [z+250] = 33280
    assert [z+251] = 4

    # Set Tempo at adjusted value
    assert [z+252] = 16732419
    assert [z+253] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+254] = adjusted_value
    assert [z+255] = 6
    assert [z+256] = 33856
    assert [z+257] = 4

    # Set Tempo at adjusted value
    assert [z+258] = 16732419
    assert [z+259] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+260] = adjusted_value
    assert [z+261] = 6
    assert [z+262] = 33792
    assert [z+263] = 4

    # Set Tempo at adjusted value
    assert [z+264] = 16732419
    assert [z+265] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+266] = adjusted_value
    assert [z+267] = 6
    assert [z+268] = 33536
    assert [z+269] = 4

    # Set Tempo at adjusted value
    assert [z+270] = 16732419
    assert [z+271] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+272] = adjusted_value
    assert [z+273] = 6
    assert [z+274] = 33344
    assert [z+275] = 4

    # Set Tempo at adjusted value
    assert [z+276] = 16732419
    assert [z+277] = 6
    tempvar value_ = 495866 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+278] = adjusted_value
    assert [z+279] = 6
    assert [z+280] = 33280
    assert [z+281] = 4

    # Set Tempo at adjusted value
    assert [z+282] = 16732419
    assert [z+283] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+284] = adjusted_value
    assert [z+285] = 6
    assert [z+286] = 33536
    assert [z+287] = 4

    # Set Tempo at adjusted value
    assert [z+288] = 16732419
    assert [z+289] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+290] = adjusted_value
    assert [z+291] = 6
    assert [z+292] = 34112
    assert [z+293] = 4

    # Set Tempo at adjusted value
    assert [z+294] = 16732419
    assert [z+295] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+296] = adjusted_value
    assert [z+297] = 6
    assert [z+298] = 33600
    assert [z+299] = 4

    # Set Tempo at adjusted value
    assert [z+300] = 16732419
    assert [z+301] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+302] = adjusted_value
    assert [z+303] = 6
    assert [z+304] = 33280
    assert [z+305] = 4

    # Set Tempo at adjusted value
    assert [z+306] = 16732419
    assert [z+307] = 6
    tempvar value_ = 491803 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+308] = adjusted_value
    assert [z+309] = 6
    assert [z+310] = 33280
    assert [z+311] = 4

    # Set Tempo at adjusted value
    assert [z+312] = 16732419
    assert [z+313] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+314] = adjusted_value
    assert [z+315] = 6
    assert [z+316] = 34048
    assert [z+317] = 4

    # Set Tempo at adjusted value
    assert [z+318] = 16732419
    assert [z+319] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+320] = adjusted_value
    assert [z+321] = 6
    assert [z+322] = 33856
    assert [z+323] = 4

    # Set Tempo at adjusted value
    assert [z+324] = 16732419
    assert [z+325] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+326] = adjusted_value
    assert [z+327] = 6
    assert [z+328] = 33856
    assert [z+329] = 4

    # Set Tempo at adjusted value
    assert [z+330] = 16732419
    assert [z+331] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+332] = adjusted_value
    assert [z+333] = 6
    assert [z+334] = 34304
    assert [z+335] = 4

    # Set Tempo at adjusted value
    assert [z+336] = 16732419
    assert [z+337] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+338] = adjusted_value
    assert [z+339] = 6
    assert [z+340] = 2071
    assert [z+341] = 3
    assert [z+342] = 295098650387925206529
    assert [z+343] = 17

    # Set Tempo at adjusted value
    assert [z+344] = 16732419
    assert [z+345] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+346] = adjusted_value
    assert [z+347] = 6
    assert [z+348] = 33280
    assert [z+349] = 4

    # Set Tempo at adjusted value
    assert [z+350] = 16732419
    assert [z+351] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+352] = adjusted_value
    assert [z+353] = 6
    assert [z+354] = 34304
    assert [z+355] = 4

    # Set Tempo at adjusted value
    assert [z+356] = 16732419
    assert [z+357] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+358] = adjusted_value
    assert [z+359] = 6
    assert [z+360] = 33280
    assert [z+361] = 4

    # Set Tempo at adjusted value
    assert [z+362] = 16732419
    assert [z+363] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+364] = adjusted_value
    assert [z+365] = 6
    assert [z+366] = 34304
    assert [z+367] = 4

    # Set Tempo at adjusted value
    assert [z+368] = 16732419
    assert [z+369] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+370] = adjusted_value
    assert [z+371] = 6
    assert [z+372] = 36194
    assert [z+373] = 4

    # Set Tempo at adjusted value
    assert [z+374] = 16732419
    assert [z+375] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+376] = adjusted_value
    assert [z+377] = 6
    assert [z+378] = 94
    assert [z+379] = 2

    # Set Tempo at adjusted value
    assert [z+380] = 16732419
    assert [z+381] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+382] = adjusted_value
    assert [z+383] = 6
    assert [z+384] = 33088
    assert [z+385] = 4

    # Set Tempo at adjusted value
    assert [z+386] = 16732419
    assert [z+387] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+388] = adjusted_value
    assert [z+389] = 6
    assert [z+390] = 33024
    assert [z+391] = 4

    # Set Tempo at adjusted value
    assert [z+392] = 16732419
    assert [z+393] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+394] = adjusted_value
    assert [z+395] = 6
    assert [z+396] = 33024
    assert [z+397] = 4

    # Set Tempo at adjusted value
    assert [z+398] = 16732419
    assert [z+399] = 6
    tempvar value_ = 545454 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+400] = adjusted_value
    assert [z+401] = 6
    assert [z+402] = 33024
    assert [z+403] = 4

    # Set Tempo at adjusted value
    assert [z+404] = 16732419
    assert [z+405] = 6
    tempvar value_ = 500000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+406] = adjusted_value
    assert [z+407] = 6
    assert [z+408] = 33088
    assert [z+409] = 4

    # Set Tempo at adjusted value
    assert [z+410] = 16732419
    assert [z+411] = 6
    tempvar value_ = 487804 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+412] = adjusted_value
    assert [z+413] = 6
    assert [z+414] = 33600
    assert [z+415] = 4

    # Set Tempo at adjusted value
    assert [z+416] = 16732419
    assert [z+417] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+418] = adjusted_value
    assert [z+419] = 6
    assert [z+420] = 33280
    assert [z+421] = 4

    # Set Tempo at adjusted value
    assert [z+422] = 16732419
    assert [z+423] = 6
    tempvar value_ = 491803 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+424] = adjusted_value
    assert [z+425] = 6
    assert [z+426] = 33088
    assert [z+427] = 4

    # Set Tempo at adjusted value
    assert [z+428] = 16732419
    assert [z+429] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+430] = adjusted_value
    assert [z+431] = 6
    assert [z+432] = 33792
    assert [z+433] = 4

    # Set Tempo at adjusted value
    assert [z+434] = 16732419
    assert [z+435] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+436] = adjusted_value
    assert [z+437] = 6
    assert [z+438] = 33344
    assert [z+439] = 4

    # Set Tempo at adjusted value
    assert [z+440] = 16732419
    assert [z+441] = 6
    tempvar value_ = 487804 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+442] = adjusted_value
    assert [z+443] = 6
    assert [z+444] = 33088
    assert [z+445] = 4

    # Set Tempo at adjusted value
    assert [z+446] = 16732419
    assert [z+447] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+448] = adjusted_value
    assert [z+449] = 6
    assert [z+450] = 33600
    assert [z+451] = 4

    # Set Tempo at adjusted value
    assert [z+452] = 16732419
    assert [z+453] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+454] = adjusted_value
    assert [z+455] = 6
    assert [z+456] = 33600
    assert [z+457] = 4

    # Set Tempo at adjusted value
    assert [z+458] = 16732419
    assert [z+459] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+460] = adjusted_value
    assert [z+461] = 6
    assert [z+462] = 33536
    assert [z+463] = 4

    # Set Tempo at adjusted value
    assert [z+464] = 16732419
    assert [z+465] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+466] = adjusted_value
    assert [z+467] = 6
    assert [z+468] = 33344
    assert [z+469] = 4

    # Set Tempo at adjusted value
    assert [z+470] = 16732419
    assert [z+471] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+472] = adjusted_value
    assert [z+473] = 6
    assert [z+474] = 33280
    assert [z+475] = 4

    # Set Tempo at adjusted value
    assert [z+476] = 16732419
    assert [z+477] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+478] = adjusted_value
    assert [z+479] = 6
    assert [z+480] = 33536
    assert [z+481] = 4

    # Set Tempo at adjusted value
    assert [z+482] = 16732419
    assert [z+483] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+484] = adjusted_value
    assert [z+485] = 6
    assert [z+486] = 38400
    assert [z+487] = 4

    # Set Tempo at adjusted value
    assert [z+488] = 16732419
    assert [z+489] = 6
    tempvar value_ = 461537 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+490] = adjusted_value
    assert [z+491] = 6
    assert [z+492] = 34624
    assert [z+493] = 4

    # Set Tempo at adjusted value
    assert [z+494] = 16732419
    assert [z+495] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+496] = adjusted_value
    assert [z+497] = 6
    assert [z+498] = 38976
    assert [z+499] = 4

    # Set Tempo at adjusted value
    assert [z+500] = 16732419
    assert [z+501] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+502] = adjusted_value
    assert [z+503] = 6
    assert [z+504] = 34624
    assert [z+505] = 4

    # Set Tempo at adjusted value
    assert [z+506] = 16732419
    assert [z+507] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+508] = adjusted_value
    assert [z+509] = 6
    assert [z+510] = 35648
    assert [z+511] = 4

    # Set Tempo at adjusted value
    assert [z+512] = 16732419
    assert [z+513] = 6
    tempvar value_ = 461537 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+514] = adjusted_value
    assert [z+515] = 6
    assert [z+516] = 34304
    assert [z+517] = 4

    # Set Tempo at adjusted value
    assert [z+518] = 16732419
    assert [z+519] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+520] = adjusted_value
    assert [z+521] = 6
    assert [z+522] = 33280
    assert [z+523] = 4

    # Set Tempo at adjusted value
    assert [z+524] = 16732419
    assert [z+525] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+526] = adjusted_value
    assert [z+527] = 6
    assert [z+528] = 33280
    assert [z+529] = 4

    # Set Tempo at adjusted value
    assert [z+530] = 16732419
    assert [z+531] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+532] = adjusted_value
    assert [z+533] = 6
    assert [z+534] = 33280
    assert [z+535] = 4

    # Set Tempo at adjusted value
    assert [z+536] = 16732419
    assert [z+537] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+538] = adjusted_value
    assert [z+539] = 6
    assert [z+540] = 34304
    assert [z+541] = 4

    # Set Tempo at adjusted value
    assert [z+542] = 16732419
    assert [z+543] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+544] = adjusted_value
    assert [z+545] = 6
    assert [z+546] = 33280
    assert [z+547] = 4

    # Set Tempo at adjusted value
    assert [z+548] = 16732419
    assert [z+549] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+550] = adjusted_value
    assert [z+551] = 6
    assert [z+552] = 34304
    assert [z+553] = 4

    # Set Tempo at adjusted value
    assert [z+554] = 16732419
    assert [z+555] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+556] = adjusted_value
    assert [z+557] = 6
    assert [z+558] = 33280
    assert [z+559] = 4

    # Set Tempo at adjusted value
    assert [z+560] = 16732419
    assert [z+561] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+562] = adjusted_value
    assert [z+563] = 6
    assert [z+564] = 34304
    assert [z+565] = 4

    # Set Tempo at adjusted value
    assert [z+566] = 16732419
    assert [z+567] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+568] = adjusted_value
    assert [z+569] = 6
    assert [z+570] = 33280
    assert [z+571] = 4

    # Set Tempo at adjusted value
    assert [z+572] = 16732419
    assert [z+573] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+574] = adjusted_value
    assert [z+575] = 6
    assert [z+576] = 34304
    assert [z+577] = 4

    # Set Tempo at adjusted value
    assert [z+578] = 16732419
    assert [z+579] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+580] = adjusted_value
    assert [z+581] = 6
    assert [z+582] = 33280
    assert [z+583] = 4

    # Set Tempo at adjusted value
    assert [z+584] = 16732419
    assert [z+585] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+586] = adjusted_value
    assert [z+587] = 6
    assert [z+588] = 34304
    assert [z+589] = 4

    # Set Tempo at adjusted value
    assert [z+590] = 16732419
    assert [z+591] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+592] = adjusted_value
    assert [z+593] = 6
    assert [z+594] = 33792
    assert [z+595] = 4

    # Set Tempo at adjusted value
    assert [z+596] = 16732419
    assert [z+597] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+598] = adjusted_value
    assert [z+599] = 6
    assert [z+600] = 33792
    assert [z+601] = 4

    # Set Tempo at adjusted value
    assert [z+602] = 16732419
    assert [z+603] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+604] = adjusted_value
    assert [z+605] = 6
    assert [z+606] = 33792
    assert [z+607] = 4

    # Set Tempo at adjusted value
    assert [z+608] = 16732419
    assert [z+609] = 6
    tempvar value_ = 472440 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+610] = adjusted_value
    assert [z+611] = 6
    assert [z+612] = 33792
    assert [z+613] = 4

    # Set Tempo at adjusted value
    assert [z+614] = 16732419
    assert [z+615] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+616] = adjusted_value
    assert [z+617] = 6
    assert [z+618] = 34624
    assert [z+619] = 4

    # Set Tempo at adjusted value
    assert [z+620] = 16732419
    assert [z+621] = 6
    tempvar value_ = 476189 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+622] = adjusted_value
    assert [z+623] = 6
    assert [z+624] = 2083
    assert [z+625] = 3
    assert [z+626] = 295098650388674216257
    assert [z+627] = 17

    # Set Tempo at adjusted value
    assert [z+628] = 16732419
    assert [z+629] = 6
    tempvar value_ = 491803 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+630] = adjusted_value
    assert [z+631] = 6
    assert [z+632] = 33280
    assert [z+633] = 4

    # Set Tempo at adjusted value
    assert [z+634] = 16732419
    assert [z+635] = 6
    tempvar value_ = 504201 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+636] = adjusted_value
    assert [z+637] = 6
    assert [z+638] = 33344
    assert [z+639] = 4

    # Set Tempo at adjusted value
    assert [z+640] = 16732419
    assert [z+641] = 6
    tempvar value_ = 521738 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+642] = adjusted_value
    assert [z+643] = 6
    assert [z+644] = 33792
    assert [z+645] = 4

    # Set Tempo at adjusted value
    assert [z+646] = 16732419
    assert [z+647] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+648] = adjusted_value
    assert [z+649] = 6
    assert [z+650] = 36864
    assert [z+651] = 4

    # Set Tempo at adjusted value
    assert [z+652] = 16732419
    assert [z+653] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+654] = adjusted_value
    assert [z+655] = 6
    assert [z+656] = 36864
    assert [z+657] = 4

    # Set Tempo at adjusted value
    assert [z+658] = 16732419
    assert [z+659] = 6
    tempvar value_ = 468750 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+660] = adjusted_value
    assert [z+661] = 6
    assert [z+662] = 36864
    assert [z+663] = 4

    # Set Tempo at adjusted value
    assert [z+664] = 16732419
    assert [z+665] = 6
    tempvar value_ = 465116 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+666] = adjusted_value
    assert [z+667] = 6
    assert [z+668] = 34816
    assert [z+669] = 4

    # Set Tempo at adjusted value
    assert [z+670] = 16732419
    assert [z+671] = 6
    tempvar value_ = 461537 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+672] = adjusted_value
    assert [z+673] = 6
    assert [z+674] = 34304
    assert [z+675] = 4

    # Set Tempo at adjusted value
    assert [z+676] = 16732419
    assert [z+677] = 6
    tempvar value_ = 500000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+678] = adjusted_value
    assert [z+679] = 6
    assert [z+680] = 33344
    assert [z+681] = 4

    # Set Tempo at adjusted value
    assert [z+682] = 16732419
    assert [z+683] = 6
    tempvar value_ = 487804 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+684] = adjusted_value
    assert [z+685] = 6
    assert [z+686] = 34112
    assert [z+687] = 4

    # Set Tempo at adjusted value
    assert [z+688] = 16732419
    assert [z+689] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+690] = adjusted_value
    assert [z+691] = 6
    assert [z+692] = 33280
    assert [z+693] = 4

    # Set Tempo at adjusted value
    assert [z+694] = 16732419
    assert [z+695] = 6
    tempvar value_ = 480000 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+696] = adjusted_value
    assert [z+697] = 6
    assert [z+698] = 34304
    assert [z+699] = 4

    # Set Tempo at adjusted value
    assert [z+700] = 16732419
    assert [z+701] = 6
    tempvar value_ = 483869 * tempo_multiplier
    let (adjusted_value, _) = unsigned_div_rem(value_, tempo_divider)
    assert [z+702] = adjusted_value
    assert [z+703] = 6
    assert [z+704] = 0
    assert [z+705] = 2
    assert [z+706] = 16723712
    assert [z+707] = 6
    let z_len = 708
    return (z_len, z)
end

@view
func music_0 {
        range_check_ptr
    } (



    ) -> (
        z_len : felt,
        z : felt*
    ):
    alloc_locals

    let (local z) = alloc()
    assert [z+0] = 136630055383401303627555395929218234800168537822816950905179850570859609862
    assert [z+1] = 247464578222557979491574522451975999067743667238984373263528570718340000816
    assert [z+2] = 78087657319841927100327731104293272275514306035225053905177626025700699238
    assert [z+3] = 172132664937629911055596029865142231323549829823128314588052118513631637548
    assert [z+4] = 92208629926255447898380647095394018526687658449514277843778031742585286704
    assert [z+5] = 85141134244832949115892675224790432143112132916415406044870668336633771122
    assert [z+6] = 207419379979681677496044975297833271645717953768139140731662020756332621868
    assert [z+7] = 93947870005163005577959776670699618225469058791994410375148256837764131888
    assert [z+8] = 78087657319841927100136910166157479088994591230597553752817998734855910700
    assert [z+9] = 85115475356329460063336719152007228780069558951719466140420797440379858988
    assert [z+10] = 92208629926176731890566871850475966227695021829462809360407176227648057392
    assert [z+11] = 85141134244832949115892675224746003181263340951476608335192484991425913388
    assert [z+12] = 92194961231160034385098067460301056200167306440864660741060168927451033644
    assert [z+13] = 93947870005163005577941449171934473904119131498160916975702481760232352816
    assert [z+14] = 78087657319841927100136910166157479088984246806813426302051305467425223529
    assert [z+15] = 195051174800041451900057416339746403033092051520747029126786232619193085996
    assert [z+16] = 92208629926176731890566871850471699024360967776318762488057372565849517104
    assert [z+17] = 81628145354316552148088384490846997225965726484639473079766873369415135285
    assert [z+18] = 77979041723111027766655948676908893289025354183444744880964015096612480300
    assert [z+19] = 85113634681271083930024961668219881324980718478083952441443660712375233584
    assert [z+20] = 78073745986543745905475035936121718254554998275607594042815053679031234604
    assert [z+21] = 85127439118462205894365213440961427887607287302913507739026132499396585057
    assert [z+22] = 191615911434117700408247270333953597178243304939914583534806471683782040876
    assert [z+23] = 161115558030300236303288568720066594120649160412812843677571074779022897712
    assert [z+24] = 85141241665009527971578662637878495928813892188830628046437871550015302771
    assert [z+25] = 178757990556341999303394843792255502003018865844193502166316877419633717296
    assert [z+26] = 78109575352922327887263438476027831127086643391296167573957488857756741676
    assert [z+27] = 85113689020768080347733935235286234354545454807979807856654197763708642604
    assert [z+28] = 180890793829807818457557267067438400455510974004059728707263411119791090736
    assert [z+29] = 78101460810898345845018139435404797581279165128345649305177930793369743920
    assert [z+30] = 85141241665006326527482235798256926385278258819234457669699873710235724916
    assert [z+31] = 202230797337781445125214840769449872021699250000727354744346161715938078768
    assert [z+32] = 78108254717456578492203995410308335080102529973433462322878595735147786284
    assert [z+33] = 85113689020768080347733189840996641412410612172024231684184042969603780149
    assert [z+34] = 78073753175859572455037499091875942933831438177182388321961691596876753968
    assert [z+35] = 78101460810898038360612616875854336439486225141548573256414763389014520368
    assert [z+36] = 85141241665006326527482235798256752834646036975621415491146443306543506722
    assert [z+37] = 78101407417558129385981879358705215697191195003311861738370439141748125744
    assert [z+38] = 78108254717456578492203923818516283735097256819941925239287010676251177772
    assert [z+39] = 85113689020768080347733189840996641412410571764118824936329485574027879027
    assert [z+40] = 186280860453293016527730836860583578548733824998192908685295159856893799472
    assert [z+41] = 78101460810898038360612616875854319770723201492903479323319646968460619820
    assert [z+42] = 85127519052152746851826750287577459842633155669110332931554937011145027120
    assert [z+43] = 93947500064985271920128267338893856703266901824186885815136394352479990629
    assert [z+44] = 78073745985722625673266750039204898607834997394082249596575062156532985900
    assert [z+45] = 85113634679622384327441541894785564221651082512043802154066843965479465008
    assert [z+46] = 78073799909305403493439954147692170274095257428554240046956243686951038054
    assert [z+47] = 172132664937542802236799573471805102274243450906856580279728639305398891869
    assert [z+48] = 78370628498804770799724058330952898673666175663457688545135126455054905392
    assert [z+49] = 85141134245652518804577946167912235288234275533035022489798115320205701989
    assert [z+50] = 78447875513646595963339831608507367537406018497532773384870678804254699564
    assert [z+51] = 334975653343357009475203742513830141551274913634108579983104
    assert [z+52] = 50
    let z_len = 53

    return (z_len, z)
end

@view
func music_1 {
        range_check_ptr
    } (



    ) -> (
        z_len : felt,
        z : felt*
    ):
    alloc_locals

    let (local z) = alloc()
    assert [z+0] = 136630055383401698422926651574183410346914346988277994928405650950548656208
    assert [z+1] = 155486431121205454340997718604636506690432198040502336143382442881004355472
    assert [z+2] = 133065710037307056132114303946437113295626566154585310809835194216324792320
    assert [z+3] = 226460101183638113689112655529915456138278044941076887908447500423331334191
    assert [z+4] = 2652292619316168716106944994118683104942966320351396334811086796934320204
    assert [z+5] = 134290737441159531830775955289951012581148170150004530857535082148583718800
    assert [z+6] = 134784219597875447904471516561851928012441861895347338191703568536050073626
    assert [z+7] = 254945253018937112161944393431077079130038575239743040137328347569803250688
    assert [z+8] = 112307381881622604979976734208965406435112001834029315380611610316227313740
    assert [z+9] = 438700710884957525373122777386797353030240850782708015153493238926540928
    assert [z+10] = 113078928302425743391222308687329025347638489844400952397763077465297209600
    assert [z+11] = 254848951990692951633742514514346119014654383729606834511237377345675349571
    assert [z+12] = 2652427419049580162325681546095840743127377611619072968947556876527112256
    assert [z+13] = 127658590911475095626324562715464973933614946050660253503252986632589033360
    assert [z+14] = 150810099894905570129994101886218207886600244236231292896397447742102460417
    assert [z+15] = 226674059216940198708286960570925304767051618249089964069419371943079987968
    assert [z+16] = 105129691951657939215838244341964247610264605174824863305979815902597775409
    assert [z+17] = 3456770662533759403674519266199448673336101802221215969033775329838224
    assert [z+18] = 127758241808645876425223046466332544573701875332815107183152501732811341824
    assert [z+19] = 226570531869938915073809944395088913710720462507996088521432382709034922321
    assert [z+20] = 995261921691942145669394791752403263636585048827548904735702052796797013
    assert [z+21] = 216000944148748807768834120510239152496397388045622590309558053910315745424
    assert [z+22] = 133265860678072809767527336131773698732646394071941310890949603054211235898
    assert [z+23] = 226680957494594629852952454979421802084208497201047490166211126214338290944
    assert [z+24] = 884744607031569049750565904141082804424632036880988133676518285169164333
    assert [z+25] = 3456875974925966842186860801532424387047308686737672794472565071414400
    assert [z+26] = 77741284353259311416797733132086311673387860289298562208674566757965299716
    assert [z+27] = 226453199437289715870052622253917297065765777433678294512891128510704275456
    assert [z+28] = 7951998029362123698692102921798361045900008278235808527626498220903596105
    assert [z+29] = 31061755116153944158208564989340883770032984778093158132852864996933776
    assert [z+30] = 69383271210347004735013123603813204146918377637446052394687703908382343168
    assert [z+31] = 254745082049583788163608552274046955614493685154830994304645337124237749315
    assert [z+32] = 9719303413233918637265025395664756264346979159013318746050263274919854143
    assert [z+33] = 3458034410033953731636711380752706792114284935667130563459994634682512
    assert [z+34] = 108233201401362379812828560041726337889485919751120462104379682182423052288
    assert [z+35] = 226618844087719417279074855132730219736108872625894918740469916126390796099
    assert [z+36] = 995691806466445243115385075710031820158926845083143483154821628194095153
    assert [z+37] = 3887108465097805965870142366539881720351064390192295558556340961280144
    assert [z+38] = 87150090057641914523174735826000453557770356925364118947917953806145374272
    assert [z+39] = 226480806429249789847604860782918417127125505901517926774859375818469028608
    assert [z+40] = 995262463859968227844962080075826560940997210003591264732574219191226424
    assert [z+41] = 162995098496468588530513132200452246384705499407597508641322904515780290176
    assert [z+42] = 107777684457782853742104354026256216927844546591394878102009672611619405824
    assert [z+43] = 254862890283123112206825764714754180217469012273985946446660115655387263232
    assert [z+44] = 995128096071503446247726868703928774809143943172876717992053256222707758
    assert [z+45] = 145326626795561828207663321599808748702391430742165764745758390253850083456
    assert [z+46] = 81274980167576928221387269240088805477533904207797658274741688485007873856
    assert [z+47] = 254787510370932977235943899441421631816836193495103769278458791903137641316
    assert [z+48] = 2651861234638329006011785336188527662928428168968751766170419768659578932
    assert [z+49] = 167860828301997381335345550801790219404481164557998512579974643382342123664
    assert [z+50] = 147283282223746730777098102069646077969483300274195140705779217739463983111
    assert [z+51] = 254835984986964079668938072470057681311408804728338229197576689058696939112
    assert [z+52] = 995884422647882538807124550840838401368191501810973662645884263489175604
    assert [z+53] = 403757532221456409646061939871486476029628137521165341863119849108042880
    assert [z+54] = 120145613914111220961912913501763289293695276678870294986103764926352020288
    assert [z+55] = 254862620683642229365093701320929528766867195058955027852429256793548407655
    assert [z+56] = 995589548617030105257089376351380502932518203892403670064254952694448195
    assert [z+57] = 3457613260597881845288226845107828178862089731436690664845651900105088
    assert [z+58] = 116613592986821731286669241011523172064819546988970810538510026659472605191
    assert [z+59] = 254925572159105023235942345994217730874100756724324997442978595397615765504
    assert [z+60] = 6185986724601745645094513703355793661543689151264630866817744304489795659
    assert [z+61] = 136057584295303691072379682155389084106674952908811315751005953964445286288
    assert [z+62] = 133024274280279461921789102886865877062500726503717193385894466125184696346
    assert [z+63] = 254931773045600322965958195567094263741953556221393363695192121860541139712
    assert [z+64] = 112307328277666133130165235656829425786750757066807551368634811576404246603
    assert [z+65] = 438700502317254935195266880614322855339447330007721064397521386054090880
    assert [z+66] = 116612622430338614431016175665474253653625319016295851760899693676500897025
    assert [z+67] = 226694767200726143133604364460802085560773843784556970008561703049491404126
    assert [z+68] = 2652427417378362389796082429877109269473409828841831150762501487212986446
    assert [z+69] = 258821490806076214526409955413546416596049873781612455405379371537546112
    assert [z+70] = 150182123542291591863706010805843197485188740228595967072375287910111903744
    assert [z+71] = 226577430871546409098145927163347747645902162493209923460075105654364195653
    assert [z+72] = 995315946897568133896098236050458755455606839602808647108425898948329535
    assert [z+73] = 183335571550635884733717683852525687256254998169379612590173827877642896
    assert [z+74] = 99503301078130008916635792782658966807533527465192713705392185814552182336
    assert [z+75] = 254987175736020599265501024752453286787678077399180324662377770395987103323
    assert [z+76] = 2652211714793517795606214540567091625831008425491446280538608820769882199
    assert [z+77] = 10360833972943830326865240607197174993331059756588285000479592811594640
    assert [z+78] = 108351446034937007009406195201416621928373857523875053120026823610228998202
    assert [z+79] = 226694760987279969145936786234889074962156537148477184716021428478579590144
    assert [z+80] = 112307467210521241736032651248140071006142680674127003173830605825822986297
    assert [z+81] = 208491842348762502338194774223680452349557580910648558746183743184989716864
    assert [z+82] = 121913161930509512901048751586039542845675500116783012684655067704701376513
    assert [z+83] = 226660258468987501319671230975378313574814222328668149965060539731208584538
    assert [z+84] = 2652373499156246351444669673164384726691855854447590831548742227822940217
    assert [z+85] = 162560291530778479210611622290727431050070539082426856628520847145604808848
    assert [z+86] = 96051644385228528491488437100978020252265734489753774995931652978504981248
    assert [z+87] = 254766616412325392836796626710227386708429479605185697194552974654112278135
    assert [z+88] = 995212004051429719195865679304158972571594462184648682738224703383633982
    assert [z+89] = 410659910441895806068651415492591683118906609666605486942854267600519312
    assert [z+90] = 74621721958286397100378631253111235471455625392802014104003226931349312001
    assert [z+91] = 226439396365866193057948659986118542846955654838017660817016929198616357120
    assert [z+92] = 112306975902352346294246428802470726235843661379544501454206008604007432237
    assert [z+93] = 438696913061945259982086545310746821644553706983563924695241054110220672
    assert [z+94] = 77741392196748427651233135523095022999312598670830871419912078239070113025
    assert [z+95] = 226467008195615556742436956273621143456747100058106229386607834767863856707
    assert [z+96] = 994963808922181787680865611153807505410452098106388352192106508165550146
    assert [z+97] = 100714169377014343862616785484865922260306875779111542608656151885144670096
    assert [z+98] = 74663132436367140485500007567296814925874998814467485595819861036313083967
    assert [z+99] = 254717630189173330354685513675703334155198146075003263343602819008091401216
    assert [z+100] = 7952564192355914086730026884004520351293608180333675776453923729236267055
    assert [z+101] = 130757040152254903309469126178832977991677529900600056188111515043801268368
    assert [z+102] = 85245209751030449410144462819099846284993333433537769313066676016246242048
    assert [z+103] = 254766050253392352269692721529217966378369608223844736178566273050887598407
    assert [z+104] = 2651564700756148954802141551458073729820230443096538969226229229840994353
    assert [z+105] = 125456499695126782268111909767108667244428591140123949383318332296956477584
    assert [z+106] = 113575153075844798507787524962787165504780529538970049204925880112965353535
    assert [z+107] = 254787348611264223535934960093565887628018966943959038222084591221657842688
    assert [z+108] = 112306735790713067733690969163491332512262399569853820846345593314542129220
    assert [z+109] = 136051113834417531218790185466501833485972732112152962904449819305575842176
    assert [z+110] = 100711996356335275979581668048030320813700612604237194681454493349688136961
    assert [z+111] = 226529119068380896813760723358233049872381318639669783140114156426283206912
    assert [z+112] = 13363111548809148059799719705985796711614948725714296452344897072265265199
    assert [z+113] = 438696923346348816799433542284702978612908546661894197093201161762963600
    assert [z+114] = 69576545378370748094251347147597472352119685073616722174856626597666049281
    assert [z+115] = 226625749737235683869189160540698714002892589982748377279741206001284564572
    assert [z+116] = 2652103888967918311817660628355794833973979605966902124806986065118203974
    assert [z+117] = 160786971273113470686093026598550036318049473629983701942134417384653462160
    assert [z+118] = 120683977089107904000510768233130964396005092664146879871701184656986996799
    assert [z+119] = 254932123524898960594996363614530219544320938600642336628386242973696804352
    assert [z+120] = 105129314512404599425640194517446813213038093870180969176949668359321255987
    assert [z+121] = 3456665350241943726915811801960191379552221245018918635268703166399632
    assert [z+122] = 125908573790596673450547589361866102935112077873080390582102412799709282304
    assert [z+123] = 226563630123566148316750750551300788501850772776292521863227824692286993234
    assert [z+124] = 995423786684236742585270666837265700159568879908898637223365730996228166
    assert [z+125] = 139591278214287399295838458887386966112862366281209915087928559392631177360
    assert [z+126] = 124196965978390172550130347626335168580651473983115324025563206066514427904
    assert [z+127] = 226598136117169269162367960939520734555864957650568675353221312860070619904
    assert [z+128] = 66258652125662259204795359466101022563970718678262955641588226278167711812
    assert [z+129] = 134284266663915478788133846532603029336446399780145864685596252825704202368
    assert [z+130] = 125446857740684048362572822121273086205396907989003531041341658395199293952
    assert [z+131] = 254746180772692235944184971871210247126115610190274905472635466793087937629
    assert [z+132] = 2651537740809319653963942955479537352254776509255259319111418834346672174
    assert [z+133] = 438697454844320880579091422080406596145485985117489095013622082932064144
    assert [z+134] = 83704420152719634241217248411200734724027798208267535617722795755383777537
    assert [z+135] = 226494613811930071801991815312866088536241635620618847686082336050296926464
    assert [z+136] = 105128964033097838097500012796602362850020002697094895699134161370961248315
    assert [z+137] = 3457507848575537383695785589150100076738935074212758837343018006086800
    assert [z+138] = 108288415372149559827772446080095281671810960418212656661180470912318636032
    assert [z+139] = 226639549333340834271941450407696904371542852144751129074780763664835172197
    assert [z+140] = 995073965579292795383386718641692655638236486501501644061265353569435702
    assert [z+141] = 31496513052591748105094435205982442396263685367493032597702953098815104
    assert [z+142] = 72440743157690193214795219483062860933910128600422379394416726027460756224
    assert [z+143] = 254876397315134746985509006845410813526446635603311740063830188550118197248
    assert [z+144] = 112307111755594418639373540743946489558041750593096015406578794270312988744
    assert [z+145] = 258821806742951269247578520262078943421947467202210728134001685301559440
    assert [z+146] = 102980972430643262943477101066505104347259500141785791247807051257342348545
    assert [z+147] = 226674061961672890829478053694533452066299456480663237888137393041556126793
    assert [z+148] = 114074149646245344054693227402374811268029870127825564821561247618488569940
    assert [z+149] = 176695066995876108819109028849182741303276255070005918745067795167603523968
    assert [z+150] = 128980846748625012737185162386942558751578139596027052732057249976133681211
    assert [z+151] = 226722367972673458719635745341492535831691190043627029691603556169003578624
    assert [z+152] = 885041129395304732798096628279425258798200736751174170239719382905557062
    assert [z+153] = 113082100109018569327129722290490916264277507262133849767823583745882915200
    assert [z+154] = 123680898685046470212262685773285992155402841538127241150587839220853112832
    assert [z+155] = 226611945500738162969475057896850269655224128387865565541294633190740208988
    assert [z+156] = 2651456860969436584170343470741224591179887221763690184345029330438553646
    assert [z+157] = 258822333304409783663261463408698841484602320847300433077204498067242896
    assert [z+158] = 111787600772432597813952072634681771459328585334502243169322144799548964864
    assert [z+159] = 226632644842333589112788260107381258610070515413039162743111745689185435983
    assert [z+160] = 995746990107292532089272944386982816754689761669696661024349195608293446
    assert [z+161] = 183332732643897753324776904112732351301106646853285457051576330372382864
    assert [z+162] = 120683951805650779815760763145586271532489194782063273537507341432228237057
    assert [z+163] = 226508420049312920060942645158967644113676361073163929718479754249575084544
    assert [z+164] = 112306655121497630785084469128767550183647125699333355817053149262195429427
    assert [z+165] = 150192358391399579716802851274125113732218690866220588437217850656003326336
    assert [z+166] = 93643905455114206842553843810083575108499780240222987444902299810904932415
    assert [z+167] = 254828327631482957028057813149947912389086411871101741244627399255963744768
    assert [z+168] = 885041129395311009899804246429074022631938278053561510938831227130777665
    assert [z+169] = 106014712460387222454265336672816182660064487152176748365661762289844355712
    assert [z+170] = 106011486116840067416976508592250250281114121018218287248720909926296474368
    assert [z+171] = 254828516449847459697055166148860046152909778621739527861038464016780902738
    assert [z+172] = 2652103899689455138755011503258032570502508540939701308048687579290239042
    assert [z+173] = 438699456189239212894513224474183382957270748331996834247825919043452816
    assert [z+174] = 119096575427289193632572669296392260944805630000437342232483340402941119489
    assert [z+175] = 226625743095999654960600088192104169765338939495415263947072257064066627584
    assert [z+176] = 995556901420875093788584222359015911654530868045204459703093933319028799
    assert [z+177] = 169531227308446196315149336173426770720342157738377167397768548857806992
    assert [z+178] = 108398868590586572040885624122264767369128176353165536562829300779578575361
    assert [z+179] = 226639553229932497704158876626274289544775421897693572738181096862390437120
    assert [z+180] = 112307140295225467092976552938049051729161837573341841425690488791497674822
    assert [z+181] = 180228760493565655346140920147491139531836486319097006456921340090530922880
    assert [z+182] = 125446155113383239535163450804383665333590475045559729535820736495988965376
    assert [z+183] = 254883191122949215063454380554214053699637789283386504305627091875696494426
    assert [z+184] = 2652157819557032235685089235813450896737099537533670209952545219111125063
    assert [z+185] = 31064809267522707463033406059224872916468371334537222555170719049727872
    assert [z+186] = 104243990328226085475767660855692138871814891802501970767445952711245365307
    assert [z+187] = 254939160070982301427128040771150647536937473480763179866861461918560829696
    assert [z+188] = 995855883017002675607246008448201879133465734527875214487463934598152266
    assert [z+189] = 438699976168679522564803048605635635054481339373779442686857164860424336
    assert [z+190] = 124114119743744633114135420862539443217510300132584314573371214302250947585
    assert [z+191] = 226680963708022882715151283969258342272544019433846577223345158545032100712
    assert [z+192] = 995695703407075950900781728845548136508833653741211506275232347404079180
    assert [z+193] = 176695066995882535958286328472254340154597421678208239520155140381655564672
    assert [z+194] = 134280498272125291006042662106317382189707159527472351420659012671359418431
    assert [z+195] = 226563627378860862023275018730847263924476422425363560043626268551559530496
    assert [z+196] = 105239971506927817267130651672722483935066498932540617380958105113371181132
    assert [z+197] = 31064071986571167334817730318086070578719675615387795155647092285899136
    assert [z+198] = 132515243530578537514735449760595094730978339970038378166351988064121454592
    assert [z+199] = 226646448341616393944931358533273541907637036530110352679288393702706269184
    assert [z+200] = 885229874964460176877675312819809520700219381811691129498225470693539915
    assert [z+201] = 3457929192551752374921251927490500493156415117911693322209139267404160
    assert [z+202] = 143116325921712279514754733656720716111112632924362815244364135595898896388
    assert [z+203] = 254939294771979267130511877948139708203612610948056040869285417771319970136
    assert [z+204] = 995641678201456257782609890942653296339928106618102656482872288068403269
    assert [z+205] = 65574383411427433182354388666320978065148126272026380284062398098980992
    assert [z+206] = 143114627444257926892938693994791038167361685627026979060798942038836403456
    assert [z+207] = 254889823269837389210116514266686701970777108712204132166137018304898811736
    assert [z+208] = 995587547683457023100297093990807774898831833512272429825422260913078344
    assert [z+209] = 3890498924495208945799975727766761294424961963038167331824232030011536
    assert [z+210] = 136670120107382741601861139546016206108681145182067129675105591679468581632
    assert [z+211] = 254863921494505443689719863922158279142487777048164128998277546388323581795
    assert [z+212] = 2651942139983764078691819658291944665042586646901264291632093332949205063
    assert [z+213] = 3890282540645896687276767104910266326341396052500144897409418004545424
    assert [z+214] = 122285156959749692385973982395370934696707066928372234046147626209922908223
    assert [z+215] = 254940130530325973908747946541257233937022895107578827315934575085172569952
    assert [z+216] = 2652130833693636927767816117193787415878114901286278479392587620399747126
    assert [z+217] = 141358124857715278749758662417033754345384185952544522201204414247046481024
    assert [z+218] = 130748288623911603733848731466124263093079920303895227988212355392019431424
    assert [z+219] = 226529125288380459025629505943983637898487734285969331926926015279160898140
    assert [z+220] = 2652076913800290066627699404109028780181327415335106625870741657725407296
    assert [z+221] = 95413628817021198358708470564567420966310150466617340656342678203673886608
    assert [z+222] = 122588833803086880061906224639942567916615391218214696692041734553376810497
    assert [z+223] = 226598136110561070688032171752866494728971295210778662074909188491033194580
    assert [z+224] = 2651942114066922933577106066735308745118213500800122128653226939217379397
    assert [z+225] = 411092032684981610051594302163823015446503956357188768943565999284682880
    assert [z+226] = 84810372776575825977119712027021998700583666674774583115146421887401026305
    assert [z+227] = 226584332617865881174206547808938914300259652596677800425526820790558800700
    assert [z+228] = 995019071933023868270530079002816984914224475132926192394575126605041728
    assert [z+229] = 181989136140956832852783336996151424835885316408511463125018465931360469376
    assert [z+230] = 104243990319587582005698061054505214111510379034608194364706127798854178049
    assert [z+231] = 226549823886123895111720876163464682061482133773333232908558305072251939165
    assert [z+232] = 2651429875080322390984763411211409633830884227778172734225289565215721360
    assert [z+233] = 104782328230043261872681411164900249823099443461131654829323178674719047744
    assert [z+234] = 226487708175596454869357587805164545037787932417908301190244650782051807295
    assert [z+235] = 113962929755877520965843840624613690499738868847413873216584805795225440327
    assert [z+236] = 212025538480075564558533383142623021416344180245214999972083204053150990480
    assert [z+237] = 87087974340520799448900414668084311961906907117358464270865210203249311744
    assert [z+238] = 254766488247245540461836166445527664960847916720558666227298940473981293406
    assert [z+239] = 995183174400058655859831798549247416554788500752790930803375484753969223
    assert [z+240] = 3459298157534270664503838157852300539137328243456818669063045173362816
    assert [z+241] = 86575521359831096442342864478725801641883185657706203159424784808593684288
    assert [z+242] = 226494609921945078346864476381704440215979375810990569995573845942512660572
    assert [z+243] = 13253509781777520091590586948756435423939869425554464111875907931477151827
    assert [z+244] = 169621209863331938347363571645506178396353707342621019174756866897104339584
    assert [z+245] = 88345840609517633956060810269997675102236175921449963829058859910952932181
    assert [z+246] = 995774371689015133753480901299151363678291767259850536220930693677154396
    assert [z+247] = 3457718479687361715860440480672580113685803097342601753031152548986768
    assert [z+248] = 141906821829428103433055988211618133317954620391488355463939404905465511995
    assert [z+249] = 226770679769253330468667512947699476903973159958187142484812841619680152064
    assert [z+250] = 112307301001396858875858475048125302689141898993211396719299786532794171457
    assert [z+251] = 410662964491926956970051525343041602521385201510695419572429155739893888
    assert [z+252] = 125447855271453745743998851295943935352789442252366182780040709959852883968
    assert [z+253] = 226584338831348939290590056118000742532673878783762103590768630230635529984
    assert [z+254] = 885256834911101998431158747939920599283096767132564111125411435070455879
    assert [z+255] = 3457086694218501995622159613744042268367621847703822856208903856062848
    assert [z+256] = 120145613911643316038276941943760820011647525316515692077279510720320523265
    assert [z+257] = 226625743095961088347929304325577882396935371399705325804261277897034053723
    assert [z+258] = 2652022993907018542022517813681961922120931917459037315145445257018118191
    assert [z+259] = 143124971711869079766745995223458322600538400204382699655575089631299829904
    assert [z+260] = 76529326914075230278050359461461003558360689063282843603554962988971608396
    assert [z+261] = 995233618987780448955733614961606242278421290722538068564278433168785459
    assert [z+262] = 3887633792427853360542397822002764609640202638992295606925313242972288
    assert [z+263] = 107777684460251110578565029946966690366551445834201715329929711724306584896
    assert [z+264] = 226508413414641691314565939183600903714698835712335828774860525122580656992
    assert [z+265] = 113963010635717541298108277862899612989991773426724955758812278440941617225
    assert [z+266] = 3459508782116823121728324067811289738193984260456806584023163703656592
    assert [z+267] = 92471336492251567621181720010573156966823178763942632682520274138563936308
    assert [z+268] = 226508413414690243128758749230048837210357460627958054812542071166656852992
    assert [z+269] = 995208449350065386686376135640311462785574565749179462138093918971002965
    assert [z+270] = 3456349413467920594140762851810495207088646116499771549369695891110272
    assert [z+271] = 88342368425027284666785833355468340433415986302917828758785162932653418498
    assert [z+272] = 226708564052180424269974376988330536341252520026781854710763266543913570383
    assert [z+273] = 155928144902731757714576734708410615428821804186238284565150236502969548928
    assert [z+274] = 128981549409274996764977253783159459127991938026826042824245738571237050368
    assert [z+275] = 254953805963297241225523050248200163833987335029438400211001661300632736768
    assert [z+276] = 885310754804562283104174428038769494350237766726499941229820056762093647
    assert [z+277] = 130750572763598064653303287253443457428554104733842064290426350542156661120
    assert [z+278] = 141347778689806680273859468999424587483179225051697580315199785623579394052
    assert [z+279] = 254952586025688220300376284674804034784853118171961964377725079167733611856
    assert [z+280] = 2652373473213704054543348585325211239563854273423772101015555103122292791
    assert [z+281] = 31496936770015898443826883954895812917604533681969114690201823250546832
    assert [z+282] = 103056916921049912794101679667875886657709814660304289114567202915184934912
    assert [z+283] = 226515315582266571869640511190396077851141496324717500400125481920578471505
    assert [z+284] = 995343223166842458308556214017682832219186017720946571484965095150944335
    assert [z+285] = 3456033483020346137581653580710569122152133343276585201304298804232080
    assert [z+286] = 118951613473433525549776304368654740955304015752737529399133012104133738555
    assert [z+287] = 226680957066719342130717436871663163685767304835310146955473527883532611328
    assert [z+288] = 112307272672390337508157181595405516983727904327227962206399576418096807991
    assert [z+289] = 438699965471392987701874823879063130069765003831892523182889044776321152
    assert [z+290] = 102478843427650678388943515605647217395234492179174886499502532206432485376
    assert [z+291] = 226577437084978044656141355518939081542180619353794206025387214750141661952
    assert [z+292] = 885148995124407846106316952027919570318294977654729609642073305338970179
    assert [z+293] = 3456665445051729687160729688783283920735699582591910477469448425177472
    assert [z+294] = 113078225650884274162231564980526384860859361298070395706655819911398311937
    assert [z+295] = 226598136110567498340601032763349631153024191599030788125037432961586187082
    assert [z+296] = 995235067443242362196389932319405235814580223421342199251818586606440523
    assert [z+297] = 106014712052714975438001994774220662207139817291322406436449024758738059408
    assert [z+298] = 125901672047544111763868282949156161010230368540765460854350975070533124096
    assert [z+299] = 254896913735809166020361174916028683672717784031972776378245100752078914048
    assert [z+300] = 995747200731944623083622438993772654976591121270041050500337488285892665
    assert [z+301] = 3890480412568426175481494563411375206370073094948512522168351111397504
    assert [z+302] = 111311380274087851957725643254934561209107207782386540926087180582866124863
    assert [z+303] = 226529118653719008458998407111662367620606682797046601082825053536821195092
    assert [z+304] = 113962956715824363844688293368318521787713684192933799615334885856926335053
    assert [z+305] = 438266895822731705076343760259830058216855386212242342429535724774490496
    assert [z+306] = 136048935969231529341244642671485507373791133073303681767021161578158317825
    assert [z+307] = 226660258462380663407133231033147820079210697787264613780593847984232351563
    assert [z+308] = 995695939948330957034081932363820519253493636142375295151058398138634311
    assert [z+309] = 116615794754955136559356632846007937042070855877833788334064578660698947728
    assert [z+310] = 120525211645874163432678562557501789702057465220476878984728453445444108288
    assert [z+311] = 254896859815904402661576203003473719632565200050061223014673426920031400448
    assert [z+312] = 995799962190127315389256901655965442089017329252825937584250471059591228
    assert [z+313] = 100720642999686189450405155330808436415873755829432706344651962324745191552
    assert [z+314] = 95409864531261154477705064272960918951579316547912544921199203516609285120
    assert [z+315] = 254821641663455369427837695941523412423515195229243109697342340184863165952
    assert [z+316] = 884798491546580624150775431999844575509542526000632066613791976906002505
    assert [z+317] = 159020124522627963643743353579514675817186776597002063931239100530481445760
    assert [z+318] = 144881472814426564910328891833047083509095840199182584190290024047256469567
    assert [z+319] = 254911984345988012043869854153545834838744701487106592145366361157509593600
    assert [z+320] = 105129530190306586990142477320251206654413187872922786720754109994181365835
    assert [z+321] = 185529302003837683512010662089739620888481735827471259351386526995241894272
    assert [z+322] = 143114733595194460376169554796907412117290872567076821804943591263315427335
    assert [z+323] = 255050423770900129250188175822144817650606555328235152126833051228128174080
    assert [z+324] = 112307601457750790418122952515696206134844598758692107420025338975708287048
    assert [z+325] = 183762456834680549387233846217288921216610600137551852711586160823370252672
    assert [z+326] = 150182014016166858757665351895222784679545631849960695568102261173587695873
    assert [z+327] = 226756876276580640982344992010789941349568475444547737107573141584332474237
    assert [z+328] = 2652427393107063464229873660034831509931127516618303185848007086760300604
    assert [z+329] = 155492902850314437163064443315550866674216857271619051002134419623688798352
    assert [z+330] = 113913363923728717353075947618004232111376829823780742052773280174085132288
    assert [z+331] = 254801394743516373987574318397827376307570303155834676138658883354059884415
    assert [z+332] = 995454222322236009176391349892528018384564312600018212974050932791676994
    assert [z+333] = 171388053245884006492421682915359264843324241642884707862940369348708024208
    assert [z+334] = 108433352039725930556133843861054038396901686814688646925344040044823084800
    assert [z+335] = 254677055370714423373761471370533332838874612077652901544139759777417806848
    assert [z+336] = 884394090675198967238524676616429481023621540351261020096920294619320386
    assert [z+337] = 132523889323300111620488623237509461127561205944824550964451777768648097680
    assert [z+338] = 120677075341115608879014513816867365439619909224308179748183256315063369791
    assert [z+339] = 254904462619613643763877552571659373889632133858680689867175389226320538731
    assert [z+340] = 995237699864815069192446079359598636171565866966849673888495031403184179
    assert [z+341] = 3456560037950324209586370033053064210372100569898800827944349328933248
    assert [z+342] = 114846772879890957171968669611995218276199108005882589556848787863455878657
    assert [z+343] = 226611946244543697125455827534726308677516628982545872602132948443234059347
    assert [z+344] = 2652076939742806672300855457574222426816585464230770611633548080952873025
    assert [z+345] = 162553816868044908944362980252142472225971858046808148245584031018739836288
    assert [z+346] = 77741284351202430326553405279523444515132374754397843093930687879847084095
    assert [z+347] = 254883541700995114152875698613223672557193193350318177781810073979179778304
    assert [z+348] = 112307031297003565030377691505709444562754416546613627727837346606346240066
    assert [z+349] = 438699446316211868977028215170725904564148567825734112453197235460440448
    assert [z+350] = 118380467010278512800208724528657209114895332596411837513516435791082247681
    assert [z+351] = 226625749737240536068832111022606045209114930999554678587832276527348729416
    assert [z+352] = 2652130859636153478744061180351353248497032939009519070527402254001999943
    assert [z+353] = 153726054627202182092595143625275075469966180204253264855370639719850246528
    assert [z+354] = 127214700637934837185199397212216968453045798487179645251590280544503943425
    assert [z+355] = 226646454969648515766497323725127500675341151361535318280370792515342715136
    assert [z+356] = 112307165570175498934706357161665767203882216446149094183399942389466497097
    assert [z+357] = 438700292516930667556913466205905864578673247469821957486765215894143360
    assert [z+358] = 128981549401841301372231421953779191901004778087148047356796778738045943808
    assert [z+359] = 226625745840693747636932188517385760569118128766698723097404623455884689981
    assert [z+360] = 2652319579262880493016898444245932143592908179216839266568220077539168334
    assert [z+361] = 157259749388632700959455850084496241065703828594197009200258769325031171456
    assert [z+362] = 107777684457783017340251714802544412277616964371208745282284755340737009920
    assert [z+363] = 254821264125457732835866196947392239285066463499285212036076542561643151872
    assert [z+364] = 46933987407427396389272426021268930269486637722531981856814304813884936253
    assert [z+365] = 125450030600883479631888351473928826939314561646691139942798270357784953216
    assert [z+366] = 137815784729479001487225127698502721528380637634487813055920868366542130240
    assert [z+367] = 254953071403465764394293107557516862413358309598619564328771313444869657971
    assert [z+368] = 2652292617645026636597101901473300203224475462369959021267327332064137280
    assert [z+369] = 153953810044986807725853851388427314551041762101727183458930939437569292928
    assert [z+370] = 143114735281559867933654321486231681370542985031294816241299739965339205632
    assert [z+371] = 226529118647112447399461010627896192241750568649679564240780096750086014034
    assert [z+372] = 995181041851884193704388140363634310419100465296363267322313721258213437
    assert [z+373] = 183336635470669780371745068234937029196181180487232126217901602569322640
    assert [z+374] = 99566333431363250096858512560945889723421641068777300808992849107501711361
    assert [z+375] = 226674061428533676484578441129618975477692420785842098582453984856211739904
    assert [z+376] = 159900656880676462048664989267577554176954469942219983684642172679225049169
    assert [z+377] = 31062597614487488775131418617354453936866831518195522109392194262547328
    assert [z+378] = 141347886520131301818990745434672207100258054205238846963055410292885487675
    assert [z+379] = 226701662727004059582560444803890870429062155452416079917620840368940532736
    assert [z+380] = 105129557151898708480900460796544876948123064013371611393115855698790547517
    assert [z+381] = 410661595438562478463709922617822108098066315010350436855024078599159952
    assert [z+382] = 133169210942458121873772392835187830046511357694905806466446492235557979456
    assert [z+383] = 226480806429244874876951291033390556735147673439582958216632409536966182746
    assert [z+384] = 995045296339147619229517744692324752031669158155553277487349196287606843
    assert [z+385] = 3457507848575537373944781542491194298666631374888227184236225443676048
    assert [z+386] = 108336727596588342340309578400080603482920483312045855402340551355558330368
    assert [z+387] = 226591234364244811039841583486463564374678447006947171019471449098743201616
    assert [z+388] = 995693175526237050924251304157735287582706642567515667630733595900936260
    assert [z+389] = 183332515025919998555420509501016551950671145098952073396337111861362832
    assert [z+390] = 87134588087485946084044467711728032662986156693305878611216496110116752897
    assert [z+391] = 226508420049311325677101108653215406575695980801006179016694466710494785792
    assert [z+392] = 112306627845614088628773115829500017443908073467644804838163830902125203512
    assert [z+393] = 162560287950154033450512165717226645892779316878679769517928203724814877056
    assert [z+394] = 86576517197234797942403120281403266274982787583154349964090315503125463099
    assert [z+395] = 226542922567642542052397493514276815676054187836835284096662112895986844672
    assert [z+396] = 46933151754392811797842138659650106748548384050255562243237949932832854086
    assert [z+397] = 146652193494944124972649817795731022828547544242453247198385441204393214336
    assert [z+398] = 83043525708994947583006358797313079006348781211226379526119112110854592000
    assert [z+399] = 254732356961321837598709222415759851376192371399989312678772213525257403243
    assert [z+400] = 114073448898256481038097056841769936669974919404949648942469909959057379371
    assert [z+401] = 191265082510725237110982443808889667038272084368195819803846739431224509584
    assert [z+402] = 141968937552740744903289155038817875706087032099144340967847754565965316096
    assert [z+403] = 226729270034936479071602175939695735162040366906745144088620708137404481380
    assert [z+404] = 995749201665580898945155543579085719566192692673604885329143981542572090
    assert [z+405] = 10358095853359736762080127346259365854937503111625838663027024654762112
    assert [z+406] = 132516670720139128388095221597787279245308792189570456848883146270971985977
    assert [z+407] = 254891151047209012331299777404049209777685655741342484124034172137964059392
    assert [z+408] = 13363597985898783994154111491079621401074221953700869834696599020069027910
    assert [z+409] = 10359675444532677333632054196062001338277351604969585249921371855454592
    assert [z+410] = 125446182066336506040288514557770397388728544091599143856930654530306665017
    assert [z+411] = 226598136854368354661204029422227018695916613514684939845129904970557049708
    assert [z+412] = 101595647342357421067828139513599227064939300811332567967153449564465299522
    assert [z+413] = 431798441269224525500491320196005855980445811191923271073631343415329152
    assert [z+414] = 127214702336653147841555140453080585197845204748700367852166702846892441600
    assert [z+415] = 226632647587037311770426886230497023762815123918740485336828450978044855361
    assert [z+416] = 2652292619316200641054058157740712728458604192335025935280796699191119948
    assert [z+417] = 169627678736769099548271421796448557674947928579660524028224408865147463040
    assert [z+418] = 111311378588162538277692795784515707251549541118512633837781057165663749632
    assert [z+419] = 254869576448642420316042680609876428698152662427843565851736710197995917568
    assert [z+420] = 112307519630100120009087619380924363798610025079511060376855622150590074960
    assert [z+421] = 174928220246999246196183999970430029352368879114201614005223600625855824256
    assert [z+422] = 137815675204507673660233678782829370417815200893657753110595212460428099621
    assert [z+423] = 226542922139807634826020727900553020636102488330310598416770475420872103168
    assert [z+424] = 8063272155200029918825356181933494708885129031498965935681303231445631037
    assert [z+425] = 3457507890456540987292710740499969842974986153870709830055141358698640
    assert [z+426] = 87135479454554968846061601293126894774211965844441342500816561096498348058
    assert [z+427] = 255036761719187230398829045163338400066929458144368351596121528366315615837
    assert [z+428] = 54001378720597341873203252286857303753265581442960108220302837010871128144
    assert [z+429] = 189062997712979096595211938823437040195427422312949176173504663721212313984
    assert [z+430] = 121912543539766947581119066542900055829495929384568723296379971576580603905
    assert [z+431] = 226674061428536890360665069388550200909560295452925072870333708855671802221
    assert [z+432] = 2652103899689562713722217210460464682233067385934480353118131456594448438
    assert [z+433] = 192590218340805491320278246335948385705389916742252016668914946470490158736
    assert [z+434] = 129725264802580557636742328344539397190436105356819412961870930573295507456
    assert [z+435] = 254856258234980813209761738641834193434264417792451006755319460270816899420
    assert [z+436] = 995505720032924710698271108686922882540392026501187188799111579058606125
    assert [z+437] = 160786971167391309962311689992326042482702038614682499681115087541018755216
    assert [z+438] = 74849454318277430733190162887211521212346871546226339203615026862793580800
    assert [z+439] = 254683795357382780309151468042904536760388888693076460916496038070802466140
    assert [z+440] = 994888063056450547174909726259331665380753311485922598818090351367000121
    assert [z+441] = 98953794776567405964162414504227852493463416261085940784886078026208247952
    assert [z+442] = 72918690772770014005449339553812441244171859339820983719057652483811851776
    assert [z+443] = 254717818908793571208787630296363788440981731774318069980123985210103573067
    assert [z+444] = 2651375981129435132250921544891169263012781240227661558280204838080843818
    assert [z+445] = 114855416569270434438976536288981754152055949060230866933507976200876785808
    assert [z+446] = 80108610305218652990431757479590789518994354193008204976507046854440976447
    assert [z+447] = 254752381560427287209097398822077244043010675855856008983970358105824312134
    assert [z+448] = 995530362723279412624529063450140242726577324297588593831455415238492200
    assert [z+449] = 438699226228470217298706189120383525168702691187688673424555835635138944
    assert [z+450] = 77742984509246020322669029137841845835402580164368441157432318593279543297
    assert [z+451] = 226460107824872405068040325634434246447918811111715320951761824724166913368
    assert [z+452] = 2651456836672531762130854958753209851113594324448903642657950083062005807
    assert [z+453] = 438697230232948757199473277630642347620422262536748517705532064494911632
    assert [z+454] = 122478405854964649236836741703866781866806545931458207008666051112581660735
    assert [z+455] = 254931449427467087990054753633497795423701797907255475927614742973514789632
    assert [z+456] = 112306545070152818314015476035399627792112739192168913929132105619673808947
    assert [z+457] = 438697440446156126627932917331320537888870869400271924147539311421558160
    assert [z+458] = 129566499359717851061712952077558195732244665098897176233401808247820929537
    assert [z+459] = 226529125288359738335788313957763256388218201040573663397549887600616033091
    assert [z+460] = 995638307822415534539226393224540878686226216931042168851325224008781872
    assert [z+461] = 125456499168565324463423122305152941122249759041617948430446274352238313360
    assert [z+462] = 85271116575497998418562237995407796455806819884180815460045253179435712571
    assert [z+463] = 254786890292170881976585437901211794037547081116294600865764504631179756800
    assert [z+464] = 46823388338366956130081231396400400254192585043813256836400557678997246006
    assert [z+465] = 143124970342910625589039499284765133672982708270756069478316120620702630016
    assert [z+466] = 107777684459428358691101226366190499493002463821909764620943612137132261439
    assert [z+467] = 254814416397722863593950066472119242260473916431585374187417979598631092555
    assert [z+468] = 995773528804943168453614458353650075456332099909640998540147853857886265
    assert [z+469] = 128990194245932717674109227854463428652880220564660916785008974669980303504
    assert [z+470] = 122430093640838793358331376836336783976842046161073050058620644746373693503
    assert [z+471] = 254814605117357568338651439669800473354593675780993883352084848297968158042
    assert [z+472] = 995882948275905417817187169850291126326192260793987665922481377224261693
    assert [z+473] = 438698606286135160341914436081562231398502250216573591752098447376778368
    assert [z+474] = 116611919783731656087342864202967290766881194551526135051498738432129976577
    assert [z+475] = 226570535759880420768117188714048631511206870489287031756466248110118551552
    assert [z+476] = 885472512838891025365034869387145304147617117983211811279958637325287492
    assert [z+477] = 3889439219560322919181321974560122664766381914204666663033995006065552
    assert [z+478] = 117315924868994475896262649010329249017797865595660758005628880203528368896
    assert [z+479] = 254946708757332405993294104105768367486299786840115491753510407769849610752
    assert [z+480] = 112306953155283159515148629752086749184400660394004769484741374603856281666
    assert [z+481] = 31496957750199225231959506419049361234433633935964032386067145970155664
    assert [z+482] = 120892727954917127528665840405008913203966779580821633433328084714256269312
    assert [z+483] = 254849713602595785922100656066061777765827510810399042751684851862380497279
    assert [z+484] = 995913804777490901374776495581461710212606509375535602003158211850440758
    assert [z+485] = 198332039581411691568048949752895841091537307431703743319373021607708590224
    assert [z+486] = 135156913907283786738673347040419255282196279466272372298433900458441506816
    assert [z+487] = 254753304833291558101570068780391624801656515324185980619581747634984987904
    assert [z+488] = 996021644564190889442636481550552892538906391982073791056575694232387626
    assert [z+489] = 3886489344007966742524813408850030147103436968619773009433212600975488
    assert [z+490] = 68907050726498045640025975985117356584290351654221282776779948157378457152
    assert [z+491] = 226397985473062742723883162837791906412244835323949346329061841592070988032
    assert [z+492] = 884286250914451622963879804212458679604171407078867345855919432120008832
    assert [z+493] = 143114625761989439261526436219100479145615213720238869129944841227188988928
    assert [z+494] = 254898207813263695610180332225314047382441903881580671039827827140927193160
    assert [z+495] = 3454243167533223622892783348008052381220378521984954241090491739078800
    assert [z+496] = 66237097673189673611472689422287950417753692526188684363398372570052972647
    assert [z+497] = 995047927115240644276213635070783239684854609235043858016509531508477989
    assert [z+498] = 169627679368642849808166513374010656812801424297253638883963969605545689232
    assert [z+499] = 103355392177796901747555516833533365124372280544542852200392295406235549759
    assert [z+500] = 255036539398353691066725583915206521747947836999551690132194472000402509914
    assert [z+501] = 2652373499130281561379142389393631420970305625386061054955558697923870798
    assert [z+502] = 410663069810645838264347239243711876442697253059711571061538544813096832
    assert [z+503] = 77741284353259311417765644744311093483345345740469510428881693346205401092
    assert [z+504] = 226411788965825251137875676384500512019835387324266279815825335745295431424
    assert [z+505] = 995910961345345223967966769198716983959516578319292552812106313547944011
    assert [z+506] = 148419040359690861727506311140079834664165558992726579941736291502320058512
    assert [z+507] = 66042851263623891193490374959727511473773711362074254669647338050188771072
    assert [z+508] = 254781397104347888354552182241434820219399145471788897609023629845212449792
    assert [z+509] = 112307493933900921495625386694018744594758210788181730896262049682920869963
    assert [z+510] = 157259749072695724627956752669089002768533180449306111027665034582085796224
    assert [z+511] = 128981439880615751616225834639626984621243640018451240397796767755066671167
    assert [z+512] = 226460101183638113371888836424618771091564068605587104837193424960504223744
    assert [z+513] = 7951809309761311061415654600748418112142176955902437159184611031392485434
    assert [z+514] = 3890593952382539400630910354085837117270956302096212685832808470413456
    assert [z+515] = 138407636422223977403312790522103173240138974685297341057928061080329675008
    assert [z+516] = 254684038095682303489066580135152705537265451404134086872452598933016816767
    assert [z+517] = 995374632172207319847202454883507399220736619779439143627466668121358414
    assert [z+518] = 438701360449388418067723423890960280086273321877360694642276614929334416
    assert [z+519] = 138469777426844067182540674189918064426852194702589091268476114554070595585
    assert [z+520] = 226680963280207221157775266529241004366133963243323008832309201794892843776
    assert [z+521] = 112195974851286786589903205256053782323592915930049672597512897555051806805
    assert [z+522] = 31061755116255023541283187861659183306260688515921616542970521789137024
    assert [z+523] = 90109215499678294993543715960197761520967048981430103064440677949474406400
    assert [z+524] = 254932096466168180397790626083599552610035513610775889562454455699223096320
    assert [z+525] = 884825449847743634397952449677348639696862956750617883252338180206137412
    assert [z+526] = 145327061886712839111439136123309055320019793975952752837109068647947567232
    assert [z+527] = 118380467018149289455090592611093359312541669688937578508273988430887606272
    assert [z+528] = 254891636326276458254504104832907391308796420990684394961488308342320287744
    assert [z+529] = 885202915017875290598498164565767315130637069395642127554926441081901134
    assert [z+530] = 157253277998087787893781885870430284555272862669912295841809245576586723712
    assert [z+531] = 139580931624205543665527644539059323787258450364094832655455054740776812548
    assert [z+532] = 254959919131173606644467011905787580985085295812595440577770637874133221733
    assert [z+533] = 2652373473213704054543350126752719722221312753312983251453329625139150904
    assert [z+534] = 31497260111661337926342395480450155626028736187228620784259422010474640
    assert [z+535] = 113789132491543367901745191508009333150389696501047000828023104482395357184
    assert [z+536] = 226542922567661881802842391904539831350205144101054987912482037773645138791
    assert [z+537] = 995561008986038142977594901228539049463614243103782558531491081473458260
    assert [z+538] = 3456770669062198730979805884640644856860793956535354418609226434756496
    assert [z+539] = 131443774365267132283803356208985966145055853883157652305373429839393849403
    assert [z+540] = 226729269291162945457675883123227546549351300874421421473307043457226784000
    assert [z+541] = 112307195057231415615760496665381615001129076245684383583351925933103677501
    assert [z+542] = 410662543242759914942374914885638209537794869676140614201695056752017536
    assert [z+543] = 106012537558094476848446788845649327783199686859889253709967212228987322368
    assert [z+544] = 226570535338652144286922178892695229468337259604941316930721695737904645888
    assert [z+545] = 885014195391097985952007972980121375304314691681775268953585999851651143
    assert [z+546] = 3457086694218501995622108232827107621306127169987721809041733619351936
    assert [z+547] = 123679308038320451722333090213446662232211913400850260348076880582864029185
    assert [z+548] = 226639546588657883351593440106691311120603567827613685417346218734954494051
    assert [z+549] = 2652130833693655759073025508524856920255985736203527551498002883856601132
    assert [z+550] = 128990195614891171902388076647439935222842142153387640646060720215104815248
    assert [z+551] = 97825393187303032467435119293666340155710851012929571818656426636386074368
    assert [z+552] = 254731568481637205264193698862697073942431053616588287123715605271415899227
    assert [z+553] = 995317105718477270617573812438082032224609694549545711633090307107557452
    assert [z+554] = 224393464124182711604730139833716238023201646600724605973237546099713720464
    assert [z+555] = 120766772763066889345452974631097223713316261106626344362116210182711476287
    assert [z+556] = 254947032276632697755150187726951230497981132797602034239336831913731049838
    assert [z+557] = 994862161169176337719021399394191435395756269409885742727583081611427913
    assert [z+558] = 3888169815537523343053968897955883884446381808742817544800000702955648
    assert [z+559] = 107777686144629507862472465840532229102303663031493674971596121393016171584
    assert [z+560] = 226660251834316423223734677851467902777582465974373473891302417785070572910
    assert [z+561] = 113963927273904476754447131815273942806601384491199700090873897582691389496
    assert [z+562] = 169704028186708530064063549660078393354174606382848633204717203860601438352
    assert [z+563] = 150791093136207244225119169423255694793047275114542880547927934975572180992
    assert [z+564] = 254932076239683214383209712625330594900591331087029696948858844287640552448
    assert [z+565] = 995505535324931434629154945081001419088444215553258863977500257445511224
    assert [z+566] = 3887435097752507785055484000599172802443565870420537373663695977019776
    assert [z+567] = 65376873946355832198305161442880187093515101463138139619429733686148350066
    assert [z+568] = 227926729917383070935350618638771154397817410815380963502071465350159958592
    assert [z+569] = 254766966792870304868763469130165335331199357284252615023476430916871529728
    assert [z+570] = 995184201220691479933414809367380440561186422210627213178243430104432768
    assert [z+571] = 40681946951424
    assert [z+572] = 12
    let z_len = 573

    return (z_len, z)
end