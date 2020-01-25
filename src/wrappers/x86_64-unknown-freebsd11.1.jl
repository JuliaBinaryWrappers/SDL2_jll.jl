# Autogenerated wrapper script for SDL2_jll for x86_64-unknown-freebsd11.1
export libsdl2

using Xorg_libX11_jll
using Xorg_libXcursor_jll
using Xorg_libXext_jll
using Xorg_libXinerama_jll
using Xorg_libXrandr_jll
using Xorg_libXScrnSaver_jll
using Libglvnd_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libsdl2`
const libsdl2_splitpath = ["lib", "libSDL2.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsdl2_path = ""

# libsdl2-specific global declaration
# This will be filled out by __init__()
libsdl2_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsdl2 = "libSDL2-2.0.so.10"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SDL2")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Xorg_libX11_jll.PATH_list, Xorg_libXcursor_jll.PATH_list, Xorg_libXext_jll.PATH_list, Xorg_libXinerama_jll.PATH_list, Xorg_libXrandr_jll.PATH_list, Xorg_libXScrnSaver_jll.PATH_list, Libglvnd_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Xorg_libX11_jll.LIBPATH_list, Xorg_libXcursor_jll.LIBPATH_list, Xorg_libXext_jll.LIBPATH_list, Xorg_libXinerama_jll.LIBPATH_list, Xorg_libXrandr_jll.LIBPATH_list, Xorg_libXScrnSaver_jll.LIBPATH_list, Libglvnd_jll.LIBPATH_list,))

    global libsdl2_path = normpath(joinpath(artifact_dir, libsdl2_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsdl2_handle = dlopen(libsdl2_path)
    push!(LIBPATH_list, dirname(libsdl2_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

