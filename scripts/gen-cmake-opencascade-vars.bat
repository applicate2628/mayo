@echo off

set _OPENCASCADE_ROOTDIR_=%1

if not exist "%_OPENCASCADE_ROOTDIR_%\env.bat"  echo set(OpenCASCADE_FOUND false)
if not exist "%_OPENCASCADE_ROOTDIR_%\env.bat"  exit /b 1

set CSF_OCCTIncludePath=
set CSF_OCCTBinPath=
set CSF_OCCTLibPath=
set CSF_OCCTResourcePath=
set TCL_DIR=
set TK_DIR=
set FREETYPE_DIR=
set FREEIMAGE_DIR=
set FFMPEG_DIR=
set TBB_DIR=
set OPENVR_DIR=
set JEMALLOC_DIR=


call "%_OPENCASCADE_ROOTDIR_%\env.bat"


if not [%CSF_OCCTIncludePath%]==[]  echo set(OpenCASCADE_FOUND true)

echo set(OpenCASCADE_INCLUDE_DIR "%CSF_OCCTIncludePath:\=/%")
echo set(OpenCASCADE_BINARY_DIR "%CSF_OCCTBinPath:\=/%")
echo set(OpenCASCADE_LIBRARY_DIR "%CSF_OCCTLibPath:\=/%")
echo set(OpenCASCADE_RESOURCE_DIR "%CSF_OCCTResourcePath:\=/%")
echo set(TCL_DIR "%TCL_DIR:\=/%")
echo set(TK_DIR "%TK_DIR:\=/%")
echo set(FREETYPE_DIR "%FREETYPE_DIR:\=/%")
echo set(FREEIMAGE_DIR "%FREEIMAGE_DIR:\=/%")
echo set(FFMPEG_DIR "%FFMPEG_DIR:\=/%")
echo set(TBB_DIR "%TBB_DIR:\=/%")
echo set(OPENVR_DIR "%OPENVR_DIR:\=/%")
echo set(JEMALLOC_DIR "%JEMALLOC_DIR:\=/%")
echo set(CSF_OPT_BIN32 "%CSF_OPT_BIN32:\=/%")
echo set(CSF_OPT_BIN32D "%CSF_OPT_BIN32D:\=/%")
echo set(CSF_OPT_BIN64 "%CSF_OPT_BIN64:\=/%")
echo set(CSF_OPT_BIN64D "%CSF_OPT_BIN64D:\=/%")

REM TODO What about variables CSF_SHMessage, CSF_MDTVTexturesDirectory, ...
