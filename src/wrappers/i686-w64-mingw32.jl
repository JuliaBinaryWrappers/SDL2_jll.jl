# Autogenerated wrapper script for SDL2_jll for i686-w64-mingw32
export libsdl2

JLLWrappers.@generate_wrapper_header("SDL2")
JLLWrappers.@declare_library_product(libsdl2, "SDL2.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libsdl2,
        "bin\\SDL2.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
