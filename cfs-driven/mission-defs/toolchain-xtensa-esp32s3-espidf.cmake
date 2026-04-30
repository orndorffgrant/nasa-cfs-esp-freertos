# Toolchain file for ESP32-S3 (Xtensa LX7) using ESP-IDF v6.x
#
# Before running CMake, activate the ESP-IDF environment:
#   source /path/to/.espressif/tools/activate_idf_v6.0.sh
#

set(IDF_PATH_ENV "$ENV{IDF_PATH}")
if(NOT IDF_PATH_ENV)
    message(FATAL_ERROR
        "IDF_PATH is not set. Source the ESP-IDF activation script first.")
endif()

set(IDF_PATH      "$ENV{IDF_PATH}"       CACHE PATH "ESP-IDF install directory")
set(IDF_TOOLS     "$ENV{IDF_TOOLS_PATH}" CACHE PATH "ESP-IDF tools directory")

message(STATUS "IDF_PATH    = ${IDF_PATH}")
message(STATUS "IDF_TOOLS   = ${IDF_TOOLS}")

# Target system identity
set(CMAKE_SYSTEM_NAME      Generic)   # bare-metal, no OS from CMake's perspective
set(CMAKE_SYSTEM_PROCESSOR xtensa)
set(IDF_TARGET             esp32s3)

# Cross compiler — xtensa-esp32s3-elf toolchain
set(TOOLCHAIN_PREFIX "xtensa-esp32s3-elf")
set(TOOLCHAIN_DIR    "${IDF_TOOLS}/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/bin")

set(CMAKE_C_COMPILER   "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-gcc" CACHE PATH "C compiler")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-g++" CACHE PATH "C++ compiler")
set(CMAKE_ASM_COMPILER "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-gcc" CACHE PATH "ASM compiler")
set(CMAKE_LINKER       "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-ld"  CACHE PATH "Linker")
set(CMAKE_AR           "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-ar"  CACHE PATH "Archiver")
set(CMAKE_NM           "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-nm"  CACHE PATH "nm")
set(CMAKE_OBJCOPY      "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-objcopy" CACHE PATH "objcopy")
set(CMAKE_OBJDUMP      "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-objdump" CACHE PATH "objdump")
set(CMAKE_STRIP        "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-strip"   CACHE PATH "strip")
set(CMAKE_RANLIB       "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-ranlib"  CACHE PATH "ranlib")
set(CMAKE_SIZE         "${TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}-size"    CACHE PATH "size")

# Bare-metal: CMake should not try to find host libraries/headers in the target
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE NEVER)

# Compiler flags for ESP32-S3 (Xtensa LX7, dual-core)
set(ESP32S3_C_FLAGS
    "-mlongcalls"
    "-mtext-section-literals"
    "-ffunction-sections"
    "-fdata-sections"
    "-fno-common"
    "-DESP_PLATFORM"
    "-DIDF_VER=\\\"v6.0\\\""
    "-DESP32S3=1"
    "-D__ESP32S3__"
)
string(JOIN " " ESP32S3_C_FLAGS_STR ${ESP32S3_C_FLAGS})

set(CMAKE_C_FLAGS   "${ESP32S3_C_FLAGS_STR}" CACHE STRING "ESP32-S3 C flags"   FORCE)
set(CMAKE_CXX_FLAGS "${ESP32S3_C_FLAGS_STR}" CACHE STRING "ESP32-S3 CXX flags" FORCE)
set(CMAKE_ASM_FLAGS "${ESP32S3_C_FLAGS_STR}" CACHE STRING "ESP32-S3 ASM flags" FORCE)

# cFS/OSAL layer selection — which implementations to build
set(CFE_SYSTEM_PSPNAME  "freertos")
set(OSAL_SYSTEM_BSPTYPE "esp-idf-freertos")
set(OSAL_SYSTEM_OSTYPE  "freertos")

# ESP-IDF component include paths
set(IDF ${IDF_PATH})
include_directories(${IDF}/components/freertos/FreeRTOS-Kernel/include)
include_directories(${IDF}/components/freertos/FreeRTOS-Kernel/portable/xtensa/include)
include_directories(${IDF}/components/freertos/FreeRTOS-Kernel-SMP/include)
include_directories(${IDF}/components/freertos/esp_additions/include)
include_directories(${IDF}/components/freertos/config/include)
include_directories(${IDF}/components/freertos/config/esp32s3/include)
include_directories(${IDF}/components/esp_common/include)
include_directories(${IDF}/components/esp_hw_support/include)
include_directories(${IDF}/components/esp_system/include)
include_directories(${IDF}/components/esp_timer/include)
include_directories(${IDF}/components/soc/include)
include_directories(${IDF}/components/soc/esp32s3/include)
include_directories(${IDF}/components/hal/include)
include_directories(${IDF}/components/hal/esp32s3/include)
include_directories(${IDF}/components/esp_rom/include)
include_directories(${IDF}/components/esp_rom/esp32s3)
include_directories(${IDF}/components/xtensa/include)
include_directories(${IDF}/components/xtensa/esp32s3/include)
include_directories(${IDF}/components/log/include)
include_directories(${IDF}/components/newlib/platform_include)

# Set IDF_BUILD_DIR to the directory containing sdkconfig.h.
# This is normally the build/config/ subdirectory of your ESP-IDF project,
set(IDF_BUILD_DIR "$ENV{IDF_BUILD_DIR}" CACHE PATH
    "Directory containing sdkconfig.h (build/config/ from an idf.py build)")

if(NOT IDF_BUILD_DIR)
    message(FATAL_ERROR
        "IDF_BUILD_DIR is not set. Point it at the build/config/ directory "
        "from your ESP-IDF project (the one containing sdkconfig.h)")
endif()

message(STATUS "IDF_BUILD_DIR = ${IDF_BUILD_DIR}")
include_directories(${IDF_BUILD_DIR})
