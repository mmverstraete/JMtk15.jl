"""
    include(JMtk15_src * "include/MisrError_h.jl")

Partial translation of the symbols defined in the C file "MisrError.h" of Mtk.

# Licensing:
* Mtk C Library: Copyright © 2005 California Institute of Technology,
    [Caltech license](https://github.com/nasa/MISR-Toolkit/blob/master/LICENSE).
* Julia wrapper: Copyright © 2023 Michel M. Verstraete,
    [MIT license](https://opensource.org/licenses/MIT).

# Versioning:
* Mtk C Library: Version 1.5.
* Julia wrapper: Version 0.1.0 (2023-02-15)

# Notes:
* See the original file for additional details and in-line comments.
* The definitions of `MTK_ERR_MSG_JUMP`, `MTK_ERR_CODE_JUMP`, `MTK_ERR_CODE_MSG_JUMP`,
    `MTK_ERR_COND_JUMP`, `MTK_PRINT_STATUS`, and `MTK_PRINT_RESULT` have not been ported.

# Example:
```julia
julia> using JMtk15

julia> include(JMtk15_src * "include/MisrError_h.jl")
```
"""
@cenum MTKt_boolean::UInt32 begin
    MTK_FALSE = 0
    MTK_TRUE = 1
end
export MTKt_boolean

@cenum MTKt_status::UInt32 begin
    MTK_SUCCESS = 0
    MTK_FAILURE = 1
    MTK_OUTBOUNDS = 2
    MTK_BAD_ARGUMENT = 3
    MTK_NOT_FOUND = 4
    MTK_FILE_NOT_FOUND = 5
    MTK_FILE_OPEN = 6
    MTK_NULLPTR = 7
    MTK_DIMENSION_MISMATCH = 8
    MTK_DATATYPE_MISMATCH = 9
    MTK_MALLOC_FAILED = 10
    MTK_CALLOC_FAILED = 11
    MTK_REALLOC_FAILED = 12
    MTK_GCTP_FORWARD_INIT_FAILED = 13
    MTK_GCTP_INVERSE_INIT_FAILED = 14
    MTK_GCTP_FORWARD_PROJ_FAILED = 15
    MTK_GCTP_INVERSE_PROJ_FAILED = 16
    MTK_MISR_PROJ_INIT_FAILED = 17
    MTK_MISR_FORWARD_PROJ_FAILED = 18
    MTK_MISR_INVERSE_PROJ_FAILED = 19
    MTK_HDF_OPEN_FAILED = 20
    MTK_HDF_ATTACH_FAILED = 21
    MTK_HDF_SDSTART_FAILED = 22
    MTK_HDF_SDEND_FAILED = 23
    MTK_HDF_SDFILEINFO_FAILED = 24
    MTK_HDF_SDFINDATTR_FAILED = 25
    MTK_HDF_SDREADATTR_FAILED = 26
    MTK_HDF_SDATTRINFO_FAILED = 27
    MTK_HDF_HDFCLOSE_FAILED = 28
    MTK_HDF_HDFOPEN_FAILED = 29
    MTK_HDF_VEND_FAILED = 30
    MTK_HDF_VFFIELDORDER_FAILED = 31
    MTK_HDF_VFFIELDTYPE_FAILED = 32
    MTK_HDF_VFNFIELDS_FAILED = 33
    MTK_HDF_VSATTACH_FAILED = 34
    MTK_HDF_VSDETACH_FAILED = 35
    MTK_HDF_VSELTS_FAILED = 36
    MTK_HDF_VSFIND_FAILED = 37
    MTK_HDF_VSFINDEX_FAILED = 38
    MTK_HDF_VSGETFIELDS_FAILED = 39
    MTK_HDF_VSGETNAME_FAILED = 40
    MTK_HDF_VSREAD_FAILED = 41
    MTK_HDF_VSSETFIELDS_FAILED = 42
    MTK_HDF_VSSIZEOF_FAILED = 43
    MTK_HDF_VSTART_FAILED = 44
    MTK_HDFEOS_GDOPEN_FAILED = 45
    MTK_HDFEOS_GDCLOSE_FAILED = 46
    MTK_HDFEOS_GDATTACH_FAILED = 47
    MTK_HDFEOS_GDDETACH_FAILED = 48
    MTK_HDFEOS_GDINQATTRS_FAILED = 49
    MTK_HDFEOS_GDINQGRID_FAILED = 50
    MTK_HDFEOS_GDINQFIELDS_FAILED = 51
    MTK_HDFEOS_GDNENTRIES_FAILED = 52
    MTK_HDFEOS_GDREADATTR_FAILED = 53
    MTK_HDFEOS_GDATTRINFO_FAILED = 54
    MTK_HDFEOS_GDFIELDINFO_FAILED = 55
    MTK_HDFEOS_GDDIMINFO_FAILED = 56
    MTK_HDFEOS_GDREADFIELD_FAILED = 57
    MTK_HDFEOS_GDGETFILLVALUE_FAILED = 58
    MTK_HDFEOS_GDPROJINFO_FAILED = 59
    MTK_HDFEOS_GDGRIDINFO_FAILED = 60
    MTK_HDFEOS_EHIDINFO_FAILED = 61
    MTK_NETCDF_OPEN_FAILED = 62
    MTK_NETCDF_READ_FAILED = 63
    MTK_NETCDF_CLOSE_FAILED = 64
    MTK_FILETYPE_NOT_SUPPORTED = 65
    MTK_DATATYPE_NOT_SUPPORTED = 66
    MTK_INVALID_FILE = 67
    MTK_INVALID_GRID = 68
    MTK_INVALID_FIELD = 69
    MTK_INVALID_FIELD_DIMENSION = 70
    MTK_MISSING_FIELD_DIMENSION = 71
    MTK_EXTRA_FIELD_DIMENSION = 72
    MTK_DIV_BY_ZERO = 73
    MTK_INVALID_ERROR_CODE = 74
end
export MTKt_status

# Mtk Error descriptions:
const MTK_ERR_DESC = (
    "SUCCESS",
    "FAILURE",
    "OUT OF BOUNDS",
    "BAD ARGUMENT",
    "NOT FOUND",
    "FILE NOT FOUND",
    "FILE OPEN FAILED",
    "NULL POINTER",
    "DIMENSION MISMATCH",
    "DATATYPE MISMATCH",
    "MALLOC FAILED",
    "CALLOC FAILED",
    "REALLOC FAILED",
    "GCTP FORWARD INIT FAILED",
    "GCTP INVERSE INIT FAILED",
    "GCTP FORWARD PROJ FAILED",
    "GCTP INVERSE PROJ FAILED",
    "MISR PROJECTION INIT FAILED",
    "MISR FORWARD PROJECTION FAILED",
    "MISR INVERSE PROJECTION FAILED",
    "HDF OPEN FAILED",
    "HDF ATTACH FAILED",
    "HDF SDSTART FAILED",
    "HDF SDEND FAILED",
    "HDF SDFILEINFO FAILED",
    "HDF SDFINDATTR FAILED",
    "HDF SDREADATTR FAILED",
    "HDF SDATTRINFO FAILED",
    "HDF HDFCLOSE FAILED",
    "HDF HDFOPEN FAILED",
    "HDF VEND FAILED",
    "HDF VFFIELDORDER FAILED",
    "HDF VFFIELDTYPE FAILED",
    "HDF VFNFIELDS FAILED",
    "HDF VSATTACH FAILED",
    "HDF VSDETACH FAILED",
    "HDF VSELTS FAILED",
    "HDF VSFIND FAILED",
    "HDF VSFINDEX FAILED",
    "HDF VSGETFIELDS FAILED",
    "HDF VSGETNAME FAILED",
    "HDF VSREAD FAILED",
    "HDF VSSETFIELDS FAILED",
    "HDF VSSIZEOF FAILED",
    "HDF VSTART FAILED",
    "HDFEOS GDOPEN FAILED",
    "HDFEOS GDCLOSE FAILED",
    "HDFEOS GDATTACH FAILED",
    "HDFEOS GDDETACH FAILED",
    "HDFEOS GDINQATTRS FAILED",
    "HDFEOS GDINQGRID FAILED",
    "HDFEOS GDINQFIELDS FAILED",
    "HDFEOS GDNENTRIES FAILED",
    "HDFEOS GDREADATTR FAILED",
    "HDFEOS GDATTRINFO FAILED",
    "HDFEOS GDFIELDINFO FAILED",
    "HDFEOS GDDIMINFO FAILED",
    "HDFEOS GDREADFIELD FAILED",
    "HDFEOS GDGETFILLVALUE FAILED",
    "HDFEOS GDPROJINFO FAILED",
    "HDFEOS GDGRIDINFO FAILED",
    "HDFEOS EHIDINFO FAILED",
    "NETCDF OPEN FAILED",
    "NETCDF READ FAILED",
    "NETCDF CLOSE FAILED",
    "FILETYPE NOT SUPPORTED",
    "DATATYPE NOT SUPPORTED",
    "INVALID FILE",
    "INVALID GRID",
    "INVALID FIELD",
    "INVALID FIELD DIMENSION",
    "MISSING FIELD DIMENSION",
    "EXTRA FIELD DIMENSION",
    "DIVIDE BY ZERO",
    "INVALID ERROR CODE")
export MTK_ERR_DESC
