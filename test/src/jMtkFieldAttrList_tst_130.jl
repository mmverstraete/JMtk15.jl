"""
    nattrs, attrlist = jMtkFieldAttrList_tst_130()

# Purpose:
Generate the output of `jMtkFieldAttrList` for testing purposes. Test 130: For a MISR `GRP_RCCM_GM` file.

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
IDL> filename = root + 'MISR_AM1_GRP_RCCM_GM_P168_O068050_CA_F04_0025.hdf'
IDL> fieldname = 'Cloud'
IDL> status = MTK_FIELDATTR_LIST(filename, fieldname, attrcnt, attrlist)
IDL> attrcnt
           1
IDL> attrlist
_FillValue
```

# Example:
```julia
julia> using JMtk15

julia> using Test

julia> include(JMtk15_test * "src/jMtkFieldAttrList_tst_130.jl")
jMtkFieldAttrList_tst_130

julia> nattrs, attrlist = jMtkFieldAttrList_tst_130();

julia> @test nattrs == 1
Test Passed

julia> @test attrlist == ["_FillValue"]
Test Passed
```
"""
function jMtkFieldAttrList_tst_130()
    filename = JMtk15_data * "MISR/MISR_AM1_GRP_RCCM_GM_P168_O068050_CA_F04_0025.hdf"
    fieldname = "Cloud"
    nattrs, attrlist = jMtkFieldAttrList(filename, fieldname);
    return nattrs, attrlist
end
