# Autogenerated wrapper script for SDL2_jll for armv7l-linux-musleabihf
export libsdl2

using Xorg_libX11_jll
using Xorg_libXcursor_jll
using Xorg_libXext_jll
using Xorg_libXinerama_jll
using Xorg_libXrandr_jll
using Xorg_libXScrnSaver_jll
using Libglvnd_jll
using alsa_jll
JLLWrappers.@generate_wrapper_header("SDL2")
JLLWrappers.@declare_library_product(libsdl2, "libSDL2-2.0.so.0")
function __init__()
    JLLWrappers.@generate_init_header(Xorg_libX11_jll, Xorg_libXcursor_jll, Xorg_libXext_jll, Xorg_libXinerama_jll, Xorg_libXrandr_jll, Xorg_libXScrnSaver_jll, Libglvnd_jll, alsa_jll)
    JLLWrappers.@init_library_product(
        libsdl2,
        "lib/libSDL2.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
