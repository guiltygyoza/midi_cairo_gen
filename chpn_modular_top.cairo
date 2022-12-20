%lang starknet
%builtins pedersen range_check
from starkware.cairo.common.cairo_builtins import HashBuiltin


@view
func chpn_op25_e1 {
        range_check_ptr
    } () -> (
        z_len : felt,
        z : felt*
    ):
    alloc_locals


end

