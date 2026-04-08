devkit: https://www.adafruit.com/product/5336
product name: ESP32-S3-DevKitC-1-N8R8
datasheet: https://cdn-shop.adafruit.com/product-files/5336/esp32-s3-wroom-1_wroom-1u_datasheet_en.pdf
per data sheet: Octal SPI for PSRAM, QSPI for flash


First, follow https://docs.espressif.com/projects/esp-idf/en/v6.0/esp32s3/get-started/index.html#installation to install the esp idf
```
eim install
```

I copied hello world from examples
and ran

```
idf.py set-target esp32s3
```


configuring external ram: https://docs.espressif.com/projects/esp-idf/en/v6.0/esp32s3/api-guides/external-ram.html#configuring-external-ram
for spi PSRAM config settings: https://docs.espressif.com/projects/esp-idf/en/stable/esp32s3/api-guides/flash_psram_config.html#configure-the-psram

add esp_psram to PRIV_REQUIRES in main/CMakeLists.txt
```
idf.py menuconfig
```
set flash size to 8Mb
turn on esp psram
set psram to octal mode
note: there are options to allow putting .bss in psram but I haven't checked that yet


