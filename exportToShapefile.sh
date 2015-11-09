#!/bin/bash

rm -f qgis/layers/1690/streets.*
ogr2ogr -f "ESRI Shapefile" qgis/layers/1690/streets.shp maps/1690/streets.geojson
rm -f qgis/layers/1690/water.*
ogr2ogr -f "ESRI Shapefile" qgis/layers/1690/water.shp maps/1690/water.geojson