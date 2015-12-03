#!/bin/bash

mkdir -p qgis/layers/Berlin/1650
ogr2ogr -f "ESRI Shapefile" -overwrite qgis/layers/Berlin/1650/natural.shp maps/1650/natural_1650.geojson

mkdir -p qgis/layers/Berlin/1690
ogr2ogr -f "ESRI Shapefile" -overwrite qgis/layers/Berlin/1690/roads.shp maps/1690/roads_1690.geojson
ogr2ogr -f "ESRI Shapefile" -overwrite qgis/layers/Berlin/1690/lines.shp maps/1690/lines_1690.geojson
ogr2ogr -f "ESRI Shapefile" -overwrite qgis/layers/Berlin/1690/natural.shp maps/1690/natural_1690.geojson