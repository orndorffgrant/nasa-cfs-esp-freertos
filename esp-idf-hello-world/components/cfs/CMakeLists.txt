cmake_minimum_required(VERSION 3.16)
 
set(CFS_ROOT "${PROJECT_DIR}/third_party/cFS")
 
set(COMPONENT_SRCS
    # generated
    "${CMAKE_CURRENT_BINARY_DIR}/src/cfe_configid_nametable.c"
    
    "${CFS_ROOT}/cfe/modules/resourceid/fsw/src/cfe_resourceid_api.c"
    "${CFS_ROOT}/cfe/modules/fs/fsw/src/cfe_fs_api.c"
    "${CFS_ROOT}/cfe/modules/fs/fsw/src/cfe_fs_priv.c"
    # "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_ccsdsext.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_ccsdspri.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_init.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_integrity.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_msgid_shared.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_msgid_v1.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_sechdr_checksum.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_sechdr_fc.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_sechdr_time.c"
    "${CFS_ROOT}/cfe/modules/sbr/fsw/src/cfe_sbr_map_direct.c"
    "${CFS_ROOT}/cfe/modules/sbr/fsw/src/cfe_sbr_route_unsorted.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_api.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_buf.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_init.c"
    # "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_eds_dispatch.c"  # Requires EDS dictionary
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_priv.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_task.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_util.c"
    "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs.c"
    "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs_dispatch.c"
    # "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs_eds_dispatch.c"  # Requires EDS dictionary
    "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs_log.c"
    "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs_task.c"
    "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs_utils.c"
    "${CFS_ROOT}/cfe/modules/tbl/fsw/src/cfe_tbl_api.c"
    "${CFS_ROOT}/cfe/modules/tbl/fsw/src/cfe_tbl_task.c"
    "${CFS_ROOT}/cfe/modules/tbl/fsw/src/cfe_tbl_task_cmds.c"
    "${CFS_ROOT}/cfe/modules/time/fsw/src/cfe_time_api.c"
    "${CFS_ROOT}/cfe/modules/time/fsw/src/cfe_time_task.c"
    "${CFS_ROOT}/cfe/modules/time/fsw/src/cfe_time_tone.c"
    "${CFS_ROOT}/cfe/modules/time/fsw/src/cfe_time_utils.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_api.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_apps.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_backgroundtask.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_cds.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_cds_mempool.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_erlog.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_generic_pool.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_mempool.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_objtab.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_resource.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_start.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_syslog.c"
    "${CFS_ROOT}/cfe/modules/es/fsw/src/cfe_es_task.c"
 
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-binsem.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-clock.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-common.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-condvar.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-countsem.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-debug.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-dir.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-errors.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-file.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-filesys.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-heap.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-idmap.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-module.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-mutex.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-network.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-printf.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-queue.c"
    # "${CFS_ROOT}/osal/src/os/shared/src/osapi-rwlock.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-select.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-shell.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-sockets.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-task.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-time.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-timebase.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-version.c"
    
    "${CFS_ROOT}/osal/src/os/portable/os-impl-console-bsp.c"
 
    "${CFS_ROOT}/osal/src/bsp/shared/src/bsp_default_app_run.c"
    "${CFS_ROOT}/osal/src/bsp/shared/src/bsp_default_app_startup.c"
    "${CFS_ROOT}/osal/src/bsp/shared/src/bsp_default_resourcecfg.c"
    "${CFS_ROOT}/osal/src/bsp/shared/src/bsp_default_symtab.c"
    "${CFS_ROOT}/osal/src/bsp/shared/src/osapi-bsp.c"
    
    # ESP IDF FreeRTOS BSP
    "${CFS_ROOT}/osal/src/bsp/esp-idf-freertos/src/bsp_console.c"
    "${CFS_ROOT}/osal/src/bsp/esp-idf-freertos/src/bsp_start.c"
    
    # FreeRTOS OSAL port
    # stubs
    "${CFS_ROOT}/osal/src/os/freertos/todo/os-impl-file.c"
    "${CFS_ROOT}/osal/src/os/freertos/todo/os-impl-filesys.c"
    "${CFS_ROOT}/osal/src/os/freertos/todo/os-impl-heap.c"
    "${CFS_ROOT}/osal/src/os/freertos/todo/os-impl-module.c"
    "${CFS_ROOT}/osal/src/os/freertos/todo/os-impl-network.c"
    "${CFS_ROOT}/osal/src/os/freertos/todo/os-impl-sockets.c"
    
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-binsem.c"
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-console.c"
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-countsem.c"
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-idmap.c"
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-mutex.c"
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-queue.c"
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-task.c"
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-timebase.c"
    "${CFS_ROOT}/osal/src/os/freertos/src/os-impl-common.c" # needs to go last since it uses the rest
 
    # TODO add when they exist
    # Our PSP port
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_start.c"
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_memory.c"
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_time.c"
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_exception.c"
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_watchdog.c"
)
 
set(PUBLIC_INCLUDES
    "${CMAKE_CURRENT_BINARY_DIR}" # generated headers go here
    "${CMAKE_CURRENT_SOURCE_DIR}/include"
    "${CFS_ROOT}/cfe/cmake/target/inc"
    "${CFS_ROOT}/cfe/modules/config/fsw/inc"
    "${CFS_ROOT}/cfe/modules/core_api/fsw/inc"
    "${CFS_ROOT}/cfe/modules/core_private/fsw/inc"
    "${CFS_ROOT}/cfe/modules/es/fsw/inc"
    "${CFS_ROOT}/cfe/modules/evs/fsw/inc"
    "${CFS_ROOT}/cfe/modules/sb/fsw/inc"
    "${CFS_ROOT}/cfe/modules/tbl/fsw/inc"
    "${CFS_ROOT}/cfe/modules/time/fsw/inc"
    "${CFS_ROOT}/cfe/modules/fs/fsw/inc"
    "${CFS_ROOT}/cfe/modules/msg/fsw/inc"
    "${CFS_ROOT}/cfe/modules/msg/option_inc"
    "${CFS_ROOT}/cfe/modules/resourceid/fsw/inc"
    "${CFS_ROOT}/cfe/modules/resourceid/option_inc"
    
    "${CFS_ROOT}/osal/src/bsp/esp-idf-freertos/inc"
    "${CFS_ROOT}/osal/src/bsp/shared/inc"
      
    "${CFS_ROOT}/osal/src/os/inc"
    "${CFS_ROOT}/psp/fsw/inc"
)
 
set(PRIVATE_INCLUDES
    "${CFS_ROOT}/cfe/modules/core_api/config"
    "${CFS_ROOT}/cfe/modules/core_private/config"
    "${CFS_ROOT}/cfe/modules/es/config"
    "${CFS_ROOT}/cfe/modules/evs/config"
    "${CFS_ROOT}/cfe/modules/fs/config"
    "${CFS_ROOT}/cfe/modules/sb/config"
    "${CFS_ROOT}/cfe/modules/tbl/config"
    "${CFS_ROOT}/cfe/modules/time/config"
    "${CFS_ROOT}/cfe/modules/es/fsw/src"
    "${CFS_ROOT}/cfe/modules/evs/fsw/src"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src"
    "${CFS_ROOT}/cfe/modules/tbl/fsw/src"
    "${CFS_ROOT}/cfe/modules/time/fsw/src"
    "${CFS_ROOT}/osal/src/os/shared/inc"
    
    "${CFS_ROOT}/osal/src/bsp/esp-idf-freertos/src"
    "${CFS_ROOT}/osal/src/os/freertos/inc"
    # TODO create and add back when they exist
    # "${CFS_ROOT}/psp/fsw/esp32s3/inc"
)

# Generate osconfig.h from OSAL's template.
include("${CFS_ROOT}/osal/default_config.cmake")
# TODO reconsider these overrides
set(OSAL_CONFIG_INCLUDE_DYNAMIC_LOADER  FALSE)
set(OSAL_CONFIG_INCLUDE_NETWORK         FALSE)
set(OSAL_CONFIG_INCLUDE_SHELL           FALSE)
set(OSAL_CONFIG_RWLOCK                  FALSE)
set(OSAL_CONFIG_DEBUG_PRINTF            TRUE)
set(OSAL_CONFIG_DEBUG_PERMISSIVE_MODE   TRUE)
set(OSAL_CONFIG_CONSOLE_ASYNC           FALSE)
set(OSAL_CONFIG_MAX_TASKS               16)
set(OSAL_CONFIG_MAX_QUEUES              64)  # Must be >= CFE_PLATFORM_SB_MAX_PIPES (default 64)
set(OSAL_CONFIG_MAX_MUTEXES             8)
set(OSAL_CONFIG_MAX_COUNT_SEMAPHORES    8)
set(OSAL_CONFIG_MAX_BIN_SEMAPHORES      8)
set(OSAL_CONFIG_MAX_RWLOCKS             0)   # disabled above
set(OSAL_CONFIG_MAX_CONDVARS            2)
set(OSAL_CONFIG_MAX_TIMEBASES           4)
set(OSAL_CONFIG_MAX_TIMERS              8)
set(OSAL_CONFIG_MAX_MODULES             4)
set(OSAL_CONFIG_MAX_FILE_SYSTEMS        2)
set(OSAL_CONFIG_MAX_NUM_OPEN_FILES      8)
set(OSAL_CONFIG_MAX_NUM_OPEN_DIRS       4)
set(OSAL_CONFIG_PRINTF_BUFFER_SIZE      512)
set(OSAL_CONFIG_PRINTF_BUFFER_DEPTH     20)
set(OSAL_CONFIG_UTILITYTASK_STACK_SIZE  2048)
set(OSAL_CONFIG_UTILITYTASK_PRIORITY    5)   # FreeRTOS low priority

set(CMAKE_SHARED_LIBRARY_SUFFIX ".so")
configure_file(
    "${CFS_ROOT}/osal/osconfig.h.in"
    "${CMAKE_CURRENT_BINARY_DIR}/osconfig.h"
    @ONLY
)

# Generate pspconfig.h from template.
include("${CFS_ROOT}/psp/default_config.cmake")
set(PSP_CONFIG_DEBUG_PRINTF             TRUE)
set(PSP_CONFIG_CF_VIRTUAL_MAPPING       "/cf/")
configure_file(
    "${CFS_ROOT}/psp/pspconfig.h.in"
    "${CMAKE_CURRENT_BINARY_DIR}/pspconfig.h"
    @ONLY
)

# *** BEGIN inline mission_build.cmake - modified ***
# Generate the complete list of configuration ids
# Start with an empty list - will be appended by various files
set(CFE_CONFIG_IDS)

# Get the base set of config IDs from a separate file
# This baseline set is based on build time config and will be the same
# on all CFE instances produced by this build.
include(${CFS_ROOT}/cfe/modules/config/config_ids_base.cmake)

# Get the set of config IDs that are generated via the platform config tool.
# These are set to values based on platform config and may be different on
# the different CFE instances.  To accomplish this, an intermediate translation
# tool must be used - this resides in the "tool" directory.
include(${CFS_ROOT}/cfe/modules/config/tool/config_ids_dynamic.cmake)

# Append any mission-specific config IDs.  This is done last so it does
# not change the order of items in the first two lists.
# include(${MISSIONCONFIG}/config_ids_custom.cmake OPTIONAL)

# Now generate header and source files containing the ID tables
# This includes an enum, and enum to string name table, and a set
# of constants to use in runtime FSW code.
set(GENERATED_ID_MACRO_LIST)
set(GENERATED_CONSTANT_DEFINE_LIST)

foreach(CFGID ${CFE_CONFIG_IDS})
  list(APPEND GENERATED_ID_MACRO_LIST "CFE_CONFIGID_DEFINE(${CFGID})\n")
  list(APPEND GENERATED_CONSTANT_DEFINE_LIST "#define CFE_CONFIGID_${CFGID} CFE_CONFIGID_FROM_OFFSET(${CFGID})\n")
endforeach()

string(CONCAT GENERATED_ID_MACRO_LIST ${GENERATED_ID_MACRO_LIST})
string(CONCAT GENERATED_CONSTANT_DEFINE_LIST ${GENERATED_CONSTANT_DEFINE_LIST})

# Write header file for config offsets - this is the basic enumeration (symbols mapped to 0-based integers)
# This is a simple list and does not need any other headers, and can be used by the platform config tool
configure_file(${CFS_ROOT}/cfe/modules/config/cmake/cfe_configid_offset.h.in ${CMAKE_CURRENT_BINARY_DIR}/cfe_configid_offset.h @ONLY)

# Write source file for enum to string mapping - this allows the software to print the config item by name
# this is a simple lookup table based on the enum, so it can also be used by FSW and the platform config tool
configure_file(${CFS_ROOT}/cfe/modules/config/cmake/cfe_configid_nametable.c.in ${CMAKE_CURRENT_BINARY_DIR}/src/cfe_configid_nametable.c @ONLY)

# Write header file for config IDs - this is the FSW runtime identifier (resourceID) based on the enum above
# however - it requires the full set of FSW headers, so it cannot be used by the platform config tool
configure_file(${CFS_ROOT}/cfe/modules/config/cmake/cfe_config_ids.h.in ${CMAKE_CURRENT_BINARY_DIR}/cfe_config_ids.h @ONLY)

# Add the subdirectory for the intermediate tool that allows platform-speicific data to included with the config
# add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/tool cfeconfig_platformdata_tool)
# *** END inline mission_build.cmake ***
  
idf_component_register(
    SRCS             ${COMPONENT_SRCS}
    INCLUDE_DIRS     ${PUBLIC_INCLUDES}
    PRIV_INCLUDE_DIRS ${PRIVATE_INCLUDES}
    REQUIRES
        freertos
        esp_common
        esp_system
        esp_timer
        esp_psram
        driver
        nvs_flash
        log
)

target_compile_options(${COMPONENT_LIB} PRIVATE
    -Wno-unused-parameter
    -Wno-sign-compare
    -Wno-maybe-uninitialized
    -Wno-format-truncation
 
    # Tell cFE this is a static-link build (no dlopen/dlsym)
    -DCFE_STATIC_MODULE
 
    # Use message ID format v1 (matches the msg/option_inc selection above)
    -DCFE_MSG_HEADER_VERSION=1
 
    # Use single CPU -> SERVER mode for time
    -DCFE_TIME_CFG_SERVER=1
    -DCFE_TIME_CFG_CLIENT=0
 
    # Resource ID implementation: simple (not strict type-checking)
    -DCFE_RESOURCEID_SIMPLE
 
    # OSAL limits - actually I think these are in osalconfig.h
    # -DOSAL_CONFIG_MAX_TASKS=16
    # -DOSAL_CONFIG_MAX_QUEUES=16
    # -DOSAL_CONFIG_MAX_MUTEXES=8
    # -DOSAL_CONFIG_MAX_TIMERS=8
    # -DOSAL_CONFIG_MAX_SEMAPHORES=16
    # -DOSAL_CONFIG_MAX_MODULES=4
    # -DOSAL_CONFIG_MAX_FILESYSTEMS=2
)
