# Attempt at cFS driven build

We didn't get this working but leaving behind a broken build in case it helps someone in the future.

## WIP instructions

> Below are the notes we began to take while getting this setup. They may not work.

Instructions assume you have ESP-IDF installed.

One time setup (already done)

> This portion requires the IDF environment to be fully activated in your shell.

1. Add `esp_psram` to `PRIV_REQUIRES` in `main/CMakeLists.txt`
2. Configure for ESP32-S3-DevKitC-1-N8R8
```
cd esp-idf-config
idf.py set-target esp32s3
idf.py menuconfig # specify anything needed
# - Set flash size to 8Mb
# - Turn on esp psram
# - Set psram to octal mode
# - Note: there is an option to put .bss in psram if needed
```

> This portion requires the IDF environment to be fully activated in your shell.

To build
```
cd esp-idf-config
idf.py bootloader app
```

```
env PATH=/home/grant/.espressif/tools/python/v6.0/venv/bin:/usr/bin:$PATH cmake -S "cFS/cfe" -B "build" -DMISSION_DEFS="mission-defs"
cmake -S "cFS/cfe" -B "build" -DMISSION_DEFS="mission-defs"
cmake --build build
```

To flash (speculative untested)

```
cd esp-idf-config
idf.py bootloader-flash
```
```
python -m esptool --chip esp32s3 -b 460800 --before default-reset --after hard-reset write-flash 0x10000 path/to/bin.bin
```
