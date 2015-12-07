#!/bin/bash

rm -Rf maps/1650 # -overwrite not supported by GeoJSON Driver 
mkdir -p maps/1650
ogr2ogr -f "GeoJSON" maps/1650/natural_1650.geojson qgis/layers/Berlin/1650/natural.shp

rm -Rf maps/1690 # -overwrite not supported by GeoJSON Driver 
mkdir -p maps/1690
ogr2ogr -f "GeoJSON" maps/1690/roads_1690.geojson qgis/layers/Berlin/1690/roads.shp
ogr2ogr -f "GeoJSON" maps/1690/natural_1690.geojson qgis/layers/Berlin/1690/natural.shp
ogr2ogr -f "GeoJSON" maps/1690/lines_1690.geojson qgis/layers/Berlin/1690/lines.shp
ogr2ogr -f "GeoJSON" maps/1690/polygons_1690.geojson qgis/layers/Berlin/1690/polygons.shp