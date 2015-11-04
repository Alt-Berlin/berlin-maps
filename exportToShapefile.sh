#!/bin/bash

rm qgis/layers/1690/streets.*
ogr2ogr -f "ESRI Shapefile" qgis/layers/1690/streets.shp maps/1690/streets.geojson