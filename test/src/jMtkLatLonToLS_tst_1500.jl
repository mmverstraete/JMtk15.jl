"""
    line, sample = jMtkLatLonToLS_tst_1500()

# Purpose:
Generate the output of `jMtkLatLonToLS` for testing purposes. Test 1500: For a MISR `GRP_RCCM_GM` file.

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
IDL> filename = root + 'MISR_AM1_GRP_RCCM_GM_P168_O068050_BA_F04_0025.hdf'
IDL> path = 168
IDL> start_block = 110
IDL> end_block = 110
IDL> status = MTK_SETREGION_BY_PATH_BLOCKRANGE(path, start_block, end_block, region)
IDL> gridname = 'RCCM'
IDL> fieldname = 'Dust_test'
IDL> status = MTK_READDATA(filename, gridname, fieldname, region, databuf, mapinfo)
IDL> latitude = -24.216289
IDL> longitude = 30.635970
IDL> status = MTK_LATLON_TO_LS(mapinfo, latitude, longitude, line, sample)
IDL> PRINT, line, sample
      50.0000      125.000
```

# Example:
```julia
julia> using JMtk15

julia> using Test

julia> include(JMtk15_test * "src/jMtkLatLonToLS_tst_1500.jl")
jMtkLatLonToLS_tst_1500

julia> line, sample = jMtkLatLonToLS_tst_1500();

julia> @test (line, sample) == (49.999954f0, 124.99995f0)
Test Passed
```
"""
function jMtkLatLonToLS_tst_1500()
    filename = JMtk15_data * "MISR/MISR_AM1_GRP_RCCM_GM_P168_O068050_BA_F04_0025.hdf"
    path = jMtkFileToPath(filename)
    start_block = 110
    end_block = 110
    region = jMtkSetRegionByPathBlockRange(path, start_block, end_block)
    gridname = "RCCM"
    fieldname = "Dust_test"
    databuf, mapinfo = jMtkReadData(filename, gridname, fieldname, region)
    latitude = -24.216289
    longitude = 30.635970
    line, sample = jMtkLatLonToLS(mapinfo, latitude, longitude)
    return line, sample
end
