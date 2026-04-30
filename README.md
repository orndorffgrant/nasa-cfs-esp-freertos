# Running cFS on FreeRTOS on an ESP32

Herein lies our attempts at getting cFS running on an ESP32 using FreeRTOS.

## Prerequisites

To run any of this, you'll need:

1. An ESP32S3 with at least 4MB of PSRAM. This was developed using https://www.adafruit.com/product/5336. (Other boards may work but you'll need to do some extra configuration that is out of scope of this README).
2. ESP-IDF installed and activated in your shell. This was developed using ESP-IDF version 6.0.

## Contents

1. `esp-idf-hello-world`: This is the main artifact. It includes a build setup for building cFS as an ESP-IDF component. In that directory you can run `idf.py build flash monitor` with your esp32s3 connected and you will see an almost complete cFS boot.
2. `esp-idf-freertos-smp-example`: This is just the freertos example from esp-idf used to validate everything is working when your esp32s3 is connected. Run it with `idf.py build flash monitor` from that directory.
3. `cfs-driven`: This directory contains an attempt at using cFS' build system to link against ESP-IDF libraries including its freertos port and build a flashable artifact that way. It is incomplete and in a broken state.

## Other repos

This repo uses the following forks of nasa cfs components as git submodules:

- https://github.com/orndorffgrant/cfs
- https://github.com/orndorffgrant/cfe
- https://github.com/orndorffgrant/osal
- https://github.com/orndorffgrant/psp
