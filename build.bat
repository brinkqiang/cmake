
rmdir /S /Q build
mkdir build
pushd build

:: Get the number of processors
set "NUMBER_OF_PROCESSORS_MINUS_ONE=%NUMBER_OF_PROCESSORS%"

:: Check if NUMBER_OF_PROCESSORS is greater than 1
if %NUMBER_OF_PROCESSORS% GTR 1 (
    set /A NUMBER_OF_PROCESSORS_MINUS_ONE=%NUMBER_OF_PROCESSORS%-1
) else (
    set NUMBER_OF_PROCESSORS_MINUS_ONE=1
)

:: Display the number of processors used
echo Using %NUMBER_OF_PROCESSORS_MINUS_ONE% processors

:: Run cmake commands
cmake -A x64 -DCMAKE_BUILD_TYPE=relwithdebinfo ..
cmake --build . --config relwithdebinfo -- /m:%NUMBER_OF_PROCESSORS_MINUS_ONE%
popd

rem pause