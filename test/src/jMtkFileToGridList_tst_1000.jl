"""
    ngrids, gridlist = jMtkFileToGridList_tst_1000()

# Purpose:
Generate the output of `jMtkFileToGridList` for testing purposes. Test 1000: For a MISR `GP_GMP` file.

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
IDL> status = MTK_FILE_TO_GRIDLIST(filename, ngrids, grid_list)
IDL> PRINT, ngrids
           1
IDL> PRINT, grid_list
GeometricParameters
```

# Example:
```julia
julia> using JMtk15

julia> using Test

julia> include(JMtk15_test * "src/jMtkFileToGridList_tst_1000.jl")
jMtkFileToGridList_tst_1000

julia> ngrids, gridlist = jMtkFileToGridList_tst_1000();

julia> @test ngrids == 1
Test Passed

julia> @test gridlist == ["GeometricParameters"]
Test Passed
```
"""
function jMtkFileToGridList_tst_1000()
    filename = JMtk15_data * "MISR/MISR_AM1_GP_GMP_P168_O068050_F03_0013.hdf"
    ngrids, gridlist = jMtkFileToGridList(filename);
    return ngrids, gridlist
end
