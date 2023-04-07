"""
    ndims, dimnames, dimsizes = jMtkFileGridFieldToDimList_test_1000()

# Purpose:
Generate the output of `jMtkFileGridFieldToDimList` for testing purposes. Test 1000: For a MISR `GP_GMP` file.

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
IDL> filename = root + 'MISR_AM1_GP_GMP_P168_O068050_F03_0013.hdf'
IDL> gridname = 'GeometricParameters'
IDL> fieldname = 'AnAzimuth'
IDL> status = MTK_FILE_GRID_FIELD_TO_DIMLIST(filename, gridname, fieldname, ndims, dimnames, dimsizes)
IDL> PRINT, ndims
           0
```

# Example:
```julia
julia> using JMtk15

julia> using Test

julia> include(JMtk15_test * "src/jMtkFileGridFieldToDimList_test_1000.jl")
jMtkFileGridFieldToDimList_test_1000

julia> ndims, dimnames, dimsizes = jMtkFileGridFieldToDimList_test_1000();

julia> @test ndims == 0
Test Passed

julia> @test dimnames == String[]
Test Passed

julia> @test dimsizes == Int32[]
Test Passed
```
"""
function jMtkFileGridFieldToDimList_test_1000()
    filename = JMtk15_data * "MISR/MISR_AM1_GP_GMP_P168_O068050_F03_0013.hdf"
    gridname = "GeometricParameters"
    fieldname = "AnAzimuth"
    ndims, dimnames, dimsizes = jMtkFileGridFieldToDimList(filename, gridname, fieldname);
    return ndims, dimnames, dimsizes
end
