# GLFW compile
Just me testing docker to see if it can be used to compile things without cluttering up my OS.

# USAGE
`DOCKER_BUILDKIT=1 docker build --target build-result --output type=local,dest={some_folder} .`

# BUILD ARGS
`--build-arg branch_name=master`
`--build-arg shared_libs={ON|OFF}`
