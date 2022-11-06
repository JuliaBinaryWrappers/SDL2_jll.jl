# Autogenerated wrapper script for SDL2_jll for aarch64-apple-darwin
export libsdl2

JLLWrappers.@generate_wrapper_header("SDL2")
JLLWrappers.@declare_library_product(libsdl2, "@rpath/libSDL2-2.0.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libsdl2,
        "lib/libSDL2.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
