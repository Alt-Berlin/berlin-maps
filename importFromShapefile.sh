#!/bin/bash

rm -Rf maps/1690
mkdir -p maps/1690
ogr2ogr -f "GeoJSON" maps/1690/streets.geojson qgis/layers/Berlin/1690/streets.shp
ogr2ogr -f "GeoJSON" maps/1690/water.geojson qgis/layers/Berlin/1690/water.shp