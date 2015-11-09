#!/bin/bash

rm -f maps/1690/streets.geojson
ogr2ogr -f "GeoJSON" maps/1690/streets.geojson qgis/layers/1690/streets.shp
rm -f maps/1690/water.geojson
ogr2ogr -f "GeoJSON" maps/1690/water.geojson qgis/layers/1690/water.shp