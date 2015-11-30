#!/bin/bash

mkdir -p qgis/layers/Berlin/1650
ogr2ogr -f "ESRI Shapefile" -overwrite qgis/layers/Berlin/1650/natural.shp maps/1650/natural.geojson

mkdir -p qgis/layers/Berlin/1690
ogr2ogr -f "ESRI Shapefile" -overwrite qgis/layers/Berlin/1690/roads.shp maps/1690/roads.geojson
ogr2ogr -f "ESRI Shapefile" -overwrite qgis/layers/Berlin/1690/lines.shp maps/1690/lines.geojson
ogr2ogr -f "ESRI Shapefile" -overwrite qgis/layers/Berlin/1690/natural.shp maps/1690/natural.geojson