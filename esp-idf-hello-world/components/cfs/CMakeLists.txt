cmake_minimum_required(VERSION 3.16)
 
set(CFS_ROOT "${PROJECT_DIR}/third_party/cFS")
 
set(COMPONENT_SRCS
    "${CFS_ROOT}/cfe/modules/resourceid/fsw/src/cfe_resourceid_api.c"
    "${CFS_ROOT}/cfe/modules/fs/fsw/src/cfe_fs_api.c"
    "${CFS_ROOT}/cfe/modules/fs/fsw/src/cfe_fs_priv.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_ccsdsext.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_ccsdspri.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_init.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_integrity.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_msgid_shared.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_msgid_v2.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_sechdr_checksum.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_sechdr_fc.c"
    "${CFS_ROOT}/cfe/modules/msg/fsw/src/cfe_msg_sechdr_time.c"
    "${CFS_ROOT}/cfe/modules/sbr/fsw/src/cfe_sbr_map_direct.c"
    "${CFS_ROOT}/cfe/modules/sbr/fsw/src/cfe_sbr_route_unsorted.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_api.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_buf.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_init.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_priv.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_task.c"
    "${CFS_ROOT}/cfe/modules/sb/fsw/src/cfe_sb_util.c"
    "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs.c"
    "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs_dispatch.c"
    "${CFS_ROOT}/cfe/modules/evs/fsw/src/cfe_evs_eds_dispatch.c"
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
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-countsem.c"
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
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-select.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-sockets.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-task.c"
    "${CFS_ROOT}/osal/src/os/shared/src/osapi-timebase.c"
 
    # TODO add when they exist
    # Our OSAL port
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-binsem.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-clock.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-common.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-countsem.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-dir.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-file.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-filesys.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-heap.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-module.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-mutex.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-network.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-queue.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-select.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-sockets.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-task.c"
    # "${CFS_ROOT}/osal/src/os/freertos/src/osapi-impl-timebase.c"
 
    # TODO add when they exist
    # Our PSP port
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_start.c"
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_memory.c"
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_time.c"
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_exception.c"
    # "${CFS_ROOT}/psp/fsw/esp32s3/src/cfe_psp_watchdog.c"
)
 
set(PUBLIC_INCLUDES
    # cfe_mission_cfg.h osconfig.h
    "${CMAKE_CURRENT_SOURCE_DIR}/include"
    "${CFS_ROOT}/cfe/modules/core_api/fsw/inc"
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
    "${CFS_ROOT}/osal/src/os/inc"
    "${CFS_ROOT}/psp/fsw/inc"
)
 
set(PRIVATE_INCLUDES
    "${CMAKE_CURRENT_BINARY_DIR}" # generated osconfig.h goes here
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
    
    # TODO create and add back when they exist
    # "${CFS_ROOT}/osal/src/os/freertos/inc"
    # "${CFS_ROOT}/psp/fsw/esp32s3/inc"
)

# Generate osconfig.h from OSAL's template.
set(OSAL_CONFIG_INCLUDE_DYNAMIC_LOADER  "")
set(OSAL_CONFIG_INCLUDE_NETWORK         "")
set(OSAL_CONFIG_INCLUDE_STATIC_LOADER   "1")
set(OSAL_CONFIG_INCLUDE_SHELL           "")
set(OSAL_CONFIG_DEBUG_PRINTF            "1")
set(OSAL_CONFIG_DEBUG_PERMISSIVE_MODE   "1")
set(OSAL_CONFIG_CONSOLE_ASYNC           "")
set(OSAL_CONFIG_BUGCHECK_DISABLE        "")
set(OSAL_CONFIG_BUGCHECK_STRICT         "")
set(OSAL_CONFIG_MAX_API_NAME        "256")
set(OSAL_CONFIG_MAX_PATH_LEN        "256")
set(OSAL_CONFIG_MAX_TASKS        "16")
set(OSAL_CONFIG_MAX_QUEUES       "16")
set(OSAL_CONFIG_MAX_MUTEXES      "8")
set(OSAL_CONFIG_MAX_COUNT_SEMAPHORES "8")
set(OSAL_CONFIG_MAX_BIN_SEMAPHORES   "8")
set(OSAL_CONFIG_MAX_TIMEBASES    "4")
set(OSAL_CONFIG_MAX_TIMERS       "8")
set(OSAL_CONFIG_MAX_MODULES      "4")
set(OSAL_CONFIG_MAX_FILESYSTEMS  "2")
set(OSAL_CONFIG_MAX_OPEN_FILES   "8")
set(OSAL_CONFIG_MAX_OPEN_DIRS    "4")
set(CMAKE_SHARED_LIBRARY_SUFFIX ".so")
configure_file(
    "${CFS_ROOT}/osal/osconfig.h.in"
    "${CMAKE_CURRENT_BINARY_DIR}/osconfig.h"
    
    @ONLY
)
 
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
 
    # Tell cFE this is a static-link build (no dlopen/dlsym)
    -DCFE_STATIC_MODULE
 
    # Use message ID format v2 (matches the msg/option_inc selection above)
    -DCFE_MSG_HEADER_VERSION=2
 
    # Use single CPU -> SERVER mode for time
    -DCFE_TIME_CFG_SERVER=1
    -DCFE_TIME_CFG_CLIENT=0
 
    # Resource ID implementation: simple (not strict type-checking)
    -DCFE_RESOURCEID_SIMPLE
 
    # OSAL limits - keep small
    -DOSAL_CONFIG_MAX_TASKS=16
    -DOSAL_CONFIG_MAX_QUEUES=16
    -DOSAL_CONFIG_MAX_MUTEXES=8
    -DOSAL_CONFIG_MAX_TIMERS=8
    -DOSAL_CONFIG_MAX_SEMAPHORES=16
    -DOSAL_CONFIG_MAX_MODULES=4
    -DOSAL_CONFIG_MAX_FILESYSTEMS=2
)
