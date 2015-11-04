#!/bin/bash

rm maps/1690/streets.geojson
ogr2ogr -f "GeoJSON" maps/1690/streets.geojson qgis/layers/1690/streets.shp