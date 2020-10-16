# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SDL2_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SDL2")
JLLWrappers.@generate_main_file("SDL2", UUID("ab825dc5-c88e-5901-9575-1e5e20358fcf"))
end  # module SDL2_jll
