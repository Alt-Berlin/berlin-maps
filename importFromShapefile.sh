#!/bin/bash

rm -Rf maps/1690 # -overwrite not supported by GeoJSON Driver 
mkdir -p maps/1690
ogr2ogr -f "GeoJSON" maps/1690/roads.geojson qgis/layers/Berlin/1690/roads.shp
ogr2ogr -f "GeoJSON" maps/1690/lines.geojson qgis/layers/Berlin/1690/lines.shp
ogr2ogr -f "GeoJSON" maps/1690/natural.geojson qgis/layers/Berlin/1690/natural.shp