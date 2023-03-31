"""
    errmsg = jMtkErrorMessage_tst_74()

# Purpose:
Generate the output of `jMtkErrorMessage` for testing purposes. Test 74: status = 74.

# Licensing:
* Mtk C Library: Copyright © 2005 California Institute of Technology,
    [Caltech license](https://github.com/nasa/MISR-Toolkit/blob/master/LICENSE).
* Julia wrapper: Copyright © 2023 Michel M. Verstraete,
    [MIT license](https://opensource.org/licenses/MIT).

# Versioning:
* Mtk C Library: Version 1.5.
* Julia wrapper: Version 0.1.0 (2023-02-15).

# Verification:
```idl
IDL> PRINT, MTK_ERROR_MESSAGE(74)
INVALID ERROR CODE
```

# Example:
```julia
julia> using JMtk15

julia> using Test

julia> include(JMtk15_test * "src/jMtkErrorMessage_tst_74.jl")
jMtkErrorMessage_tst_74

julia> errmsg = jMtkErrorMessage_tst_74();

julia> @test errmsg == "INVALID ERROR CODE"
Test Passed
```
"""
function jMtkErrorMessage_tst_74()
    status = 74
    return jMtkErrorMessage(status)
end
