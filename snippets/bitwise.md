# Bitwise operations

Set a flag: `x |= flag`  
Unset a flag: `x &= ~flag`  
Toggle a flag: `x ^= flag`

Check flag is present: `x & flag > 0`  
And not present: `x & flag == 0`

Shift a bit:  
`1 << 2` will be 4; shifts 2 positions to the left i.e. 2^2  
`1 << 6` will be 64; shifts 6 positions to the left i.e. 2^6
