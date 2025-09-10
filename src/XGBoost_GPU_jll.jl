# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule XGBoost_GPU_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("XGBoost_GPU")
JLLWrappers.@generate_main_file("XGBoost_GPU", UUID("bf13095a-df47-5f5c-aa1a-d897479947cc"))
end  # module XGBoost_GPU_jll
