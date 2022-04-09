# folder source plugin

## Introduction

This plugin is part of the [Photo Channel](https://github.com/photo-channel/photo-channel) project. The project is a processing pipeline for pictures for indexing, analyzing and categorizing images.

## Description

This plugin reads data from `/import` and feeds it to the processing pipeline. If you like to import several folders, volume mount them under for example `/import/a` and `/import/b`.

## Usage

```yaml
  plugin-source-folder:
    image: ghcr.io/photo-channel/plugin-source-folder:sha-bf7cb15
    volumes:
      - /mnt/pictures/:/import/
    networks:
      - photo-channel
    environment:
      MQTT_SERVER: mosquitto
      MQTT_TOPIC: photo-channel
    depends_on:
      - photo-channel
```
