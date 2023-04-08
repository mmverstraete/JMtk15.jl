"""
    line, sample = jMtkLatLonToLS(mapinfo, latitude, longitude)

# Purpose:
Return a line and sample, given a decimal latitude/longitude pair.

# Licensing:
* Mtk C Library: Copyright © 2005 California Institute of Technology,
    [Caltech license](https://github.com/nasa/MISR-Toolkit/blob/master/LICENSE).
* Julia wrapper: Copyright © 2023 Michel M. Verstraete,
    [MIT license](https://opensource.org/licenses/MIT).

# Versioning:
* Mtk C Library: Version 1.5.
* Julia wrapper: Version 0.1.0 (2023-02-15).

# Example:
```julia
julia> using JMtk15

julia> filename = JMtk15_data * "MISR/MISR_AM1_GRP_TERRAIN_GM_P168_O068050_CF_F03_0024.hdf"
"/Users/michel/Codes/Julia/JMtk15/data/MISR/MISR_AM1_GRP_TERRAIN_GM_P168_O068050_CF_F03_0024.hdf"

julia> path = jMtkFileToPath(filename)
168

julia> start_block = 110
110

julia> end_block = 110
110

julia> region = jMtkSetRegionByPathBlockRange(path, start_block, end_block)
MTKt_Region(MTKt_GeoCenter(MTKt_GeoCoord(-24.479478582488763, 32.028724322255464)), MTKt_Extent(70262.5, 281462.5))

julia> gridname = "GreenBand"
"GreenBand"

julia> fieldname = "Green Radiance/RDQI"
"Green Radiance/RDQI"

julia> databuf, mapinfo = jMtkReadData(filename, gridname, fieldname, region)
(UInt16[0xffeb 0xffeb … 0xffeb 0xffeb; 0xffeb 0xffeb … 0xffeb 0xffeb; … ; 0xffeb 0xffeb … 0xffeb 0xffeb; 0xffeb 0xffeb … 0xffeb 0xffeb], MTKt_MapInfo(168, 110, 110, 1100, 4, 128, 512, JMtk15.MTK_TRUE, MTKt_SomRegion(168, MTKt_SomCoord(2.28085e7, -633600.0), MTKt_SomCoord(2.287835e7, -352550.0), MTKt_SomCoord(2.29482e7, -71500.0)), MTKt_GeoRegion(MTKt_GeoCoord(-23.58709279748763, 29.353665543180618), MTKt_GeoCoord(-24.0676258508188, 34.84437551586123), MTKt_GeoCoord(-24.479478582488763, 32.028724322255464), MTKt_GeoCoord(-25.323930208545036, 34.740509109113106), MTKt_GeoCoord(-24.838877358123973, 29.195643744542547)), MTKt_MisrProjParam(168, 22, -1, 12, [6.378137e6, -0.006694348, 0.0, 9.8018013752e7, -1.3001505477562232e8, 0.0, 0.0, 0.0, 98.88, 0.0, 0.0, 180.0, 0.0, 0.0, 0.0], [7.46075e6, 1.09065e6], [7.60155e6, 527450.0], 180, 128, 512, Float32[0.0, 16.0, 0.0, 16.0, 0.0, 0.0, 0.0, 16.0, 0.0, 0.0  …  0.0, 0.0, 16.0, 0.0, 0.0, 16.0, 0.0, 0.0, 16.0, 0.0], 1100)))

julia> latitude = -24.216289
-24.216289

julia> longitude = 30.635970
30.63597

julia> line, sample = jMtkLatLonToLS(mapinfo, latitude, longitude)
(49.999954f0, 124.99995f0)
```
"""
function jMtkLatLonToLS(mapinfo, latitude, longitude)
    line = Ref{Cfloat}(0.0)
    sample = Ref{Cfloat}(0.0)
    status = ccall((:MtkLatLonToLS, mtklib),
        Cint,
        (MTKt_MapInfo, Cdouble, Cdouble, Ptr{Cfloat}, Ptr{Cfloat}),
        mapinfo, latitude, longitude, line, sample)
    if status != 0
        error("jMtkLatLonToLS status = ", status,
            ", error message = ", jMtkErrorMessage(status))
    end
    return line[], sample[]
end
