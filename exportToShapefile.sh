#!/bin/bash

rm -Rf qgis/layers/Berlin/1690
mkdir -p qgis/layers/Berlin/1690
ogr2ogr -f "ESRI Shapefile" qgis/layers/Berlin/1690/streets.shp maps/1690/streets.geojson
ogr2ogr -f "ESRI Shapefile" qgis/layers/Berlin/1690/water.shp maps/1690/water.geojson