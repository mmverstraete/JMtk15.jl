"""
    nfields, fieldlist = jMtkFileGridToFieldList_tst_2300()

# Purpose:
Generate the output of `jMtkFileGridToFieldList` for testing purposes. Test 2300: For a MISR `TC_CLOUD` file.

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
IDL> filename = root + 'MISR_AM1_TC_CLOUD_P168_O068050_F01_0001.hdf'
IDL> gridname = 'Stereo_1.1_km'
IDL> status = MTK_FILE_GRID_TO_FIELDLIST(filename, gridname, nfields, fieldlist)
IDL> PRINT, nfields
           7
IDL> PRINT, fieldlist
CloudTopHeight CloudMotionCrossTrack Raw CloudMotionCrossTrack CloudMotionCrossTrackHeading Raw CloudMotionCrossTrackHeading StereoDerivedCloudMask StereoQualityIndicator
```

# Example:
```julia
julia> using JMtk15

julia> using Test

julia> include(JMtk15_test * "src/jMtkFileGridToFieldList_tst_2300.jl")
jMtkFileGridToFieldList_tst_2300

julia> nfields, fieldlist = jMtkFileGridToFieldList_tst_2300();

julia> @test nfields == 7
Test Passed

julia> @test fieldlist == ["CloudTopHeight", "CloudMotionCrossTrack", "Raw CloudMotionCrossTrack", "CloudMotionCrossTrackHeading", "Raw CloudMotionCrossTrackHeading", "StereoDerivedCloudMask", "StereoQualityIndicator"]
Test Passed
```
"""
function jMtkFileGridToFieldList_tst_2300()
    filename = JMtk15_data * "MISR/MISR_AM1_TC_CLOUD_P168_O068050_F01_0001.hdf"
    gridname = "Stereo_1.1_km"
    nfields, fieldlist = jMtkFileGridToFieldList(filename, gridname);
    return nfields, fieldlist
end
