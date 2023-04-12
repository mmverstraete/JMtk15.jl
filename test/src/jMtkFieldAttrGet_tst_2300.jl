"""
    attrval = jMtkFieldAttrGet_tst_2300()

# Purpose:
Generate the output of `jMtkFieldAttrGet` for testing purposes. Test 2300: For a MISR `TC_CLOUD` file.

# Licensing:
* Mtk C Library: Copyright © 2005 California Institute of Technology,
    [Caltech license](https://github.com/nasa/MISR-Toolkit/blob/master/LICENSE).
* Julia wrapper: Copyright © 2023 Michel M. Verstraete,
    [MIT license](https://opensource.org/licenses/MIT).

# Versioning:
* Mtk C Library: Version 1.5.
* Julia wrapper: Version 0.1.0 (2023-02-07).

# Verification:
```idl
IDL> filename = root + "MISR_AM1_TC_CLOUD_P168_O068050_F01_0001.hdf"
IDL> fieldname = "CloudMotionNorthward"
IDL> attrname = "_FillValue"
IDL> status = MTK_FIELDATTR_GET(filename, fieldname, attrname, attrval)
IDL> PRINT, attrval
     -9999.0
```

# Example:
```julia
julia> using JMtk15

julia> using Test

julia> include(JMtk15_test * "src/jMtkFieldAttrGet_tst_2300.jl")
jMtkFieldAttrGet_tst_2300

julia> attrval = jMtkFieldAttrGet_tst_2300();

julia> @test attrval == -9999.0
Test Passed
```
"""
function jMtkFieldAttrGet_tst_2300()
    filename = JMtk15_data * "MISR/MISR_AM1_TC_CLOUD_P168_O068050_F01_0001.hdf"
    fieldname = "CloudMotionNorthward"
    attrname = "_FillValue"
    attrval = jMtkFieldAttrGet(filename, fieldname, attrname)
    return attrval
end
