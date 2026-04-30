# arch_build_custom.cmake — ESP32-S3 mission arch build options
#
# Loaded for every arch build (cross-compilation sub-process).
# Add mission-wide compile flags here.

# Treat warnings as errors where possible, but suppress some that
# come from upstream cFS/OSAL code we don't control.
add_compile_options(
    -Wall
    -Wno-unused-parameter
    -Wno-sign-compare
    -Wno-maybe-uninitialized
    -Wno-format-truncation
)

# Static module build — no dlopen/dlsym
add_definitions(-DCFE_STATIC_MODULE)

# Message ID format v1
add_definitions(-DCFE_MSG_HEADER_VERSION=1)

# Single CPU — TIME server mode
add_definitions(-DCFE_TIME_CFG_SERVER=1)
add_definitions(-DCFE_TIME_CFG_CLIENT=0)

# Resource ID simple (non-strict) mode
add_definitions(-DCFE_RESOURCEID_SIMPLE)

set(CUSTOM_FREERTOS_FILESYSTEM "1")
