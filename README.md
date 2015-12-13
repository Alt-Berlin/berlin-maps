# Berlin Maps

Historical maps of Berlin in a vector-based format. The data is based on maps provided by [Senatsverwaltung für Stadtentwicklung und Umwelt Berlin](http://www.stadtentwicklung.berlin.de/geoinformation/geodateninfrastruktur/de/geodienste/atom.shtml) and [OpenStreetMap](http://www.openstreetmap.org/about).

## Map Features

Features in the map are described using tags, which are compatible with [OSM Map Features](http://wiki.openstreetmap.org/wiki/Map_Features).

### Roads
Layer type: line, OSM description: [highway](http://wiki.openstreetmap.org/wiki/Highways)

Feature     | Tags
----------- | ----
Main roads  | type=tertiary
Roads       | type=residential

### Natural
Layer type: polygon, OSM description: [natural](http://wiki.openstreetmap.org/wiki/Key:natural)

Feature     | Tags
----------- | ----
Water       | type=water
Wetland     | type=wetland
Forest      | type=wood

### Buildings

Layer type: polygon, OSM description: [building](http://wiki.openstreetmap.org/wiki/Key:building)

Feature         | Tags              | Original description
--------------- | ----------------- | --------------------
Public building | type=public       |


### Landuse

Layer type: polygon, OSM description: [landuse](http://wiki.openstreetmap.org/wiki/Landuse)

Feature     | Tags              | Original description
----------- | ----------------- | --------------------
Mostly residential | type=residential  | Wohngebiete
Mixed residential/retail | | Mischgebiete
Mostly retail | type=retail | Kerngebiete
Commercial/industrial | type=commercial | Gewerbe- und Industriegebiete
Special area | | Besondere Gebiete
Military | type=military | Militärisch genutzte Flächen
Green area | type=village_green | Grünflächen
Farmland | type=farmland | Landwirtschaftsflächen
Garden |  | Gartenbauflächen
Forest | type=forest | Waldflächen

ToDo: Gartenbauflächen, Gemeinbedarfsflächen, Besondere Gebiete, Mischgebiete, Grünflächen

Notes:
- Water (Wasserflächen), wetlands (Feuchtgebiete) and forest (Waldflächen) see layer [natural](#natural)
- The layers natural and landuse complement each other (one area is never added to both layers)


### Lines
Layer type: line, OSM description: [boundary](http://wiki.openstreetmap.org/wiki/Boundaries), [barrier](http://wiki.openstreetmap.org/wiki/Barriers)

Feature                 | Tags                    | Original description
----------------------- | ----------------------- | --------------------
Administrative boundary | boundary=administrative |
Fortress wall           | barrier=city_wall       | Festungsanlagen
City wall               | barrier=city_wall       | Mittelalterliche Stadtmauer

## Contribute

The map data is created and edited with [QGIS](http://www.qgis.org). Because this repo contains large image files, you also have to use [git-lfs](https://git-lfs.github.com), a Git extension for versioning large files.

- [Install QGIS](https://github.com/Alt-Berlin/berlin-maps/wiki/QGIS#install-qgis-os-x)
- Install git-lfs
 - `brew install git-lfs`
 - `git lfs init`
- [Fork this repo](https://help.github.com/articles/fork-a-repo/) and clone your fork

The vector data in this repo is stored in GeoJSON format. GeoJSON is a text-based format, so you can use standard tools to visualize differences between versions. Since QGIS works best with shapefiles, the GeoJSON data has to be converted before being used with QGIS:

````
cd berlin-maps
./exportToShapefile.sh
````

After opening and editing data in `qgis/Berlin.qgs`, you can convert the shapefiles back into GeoJSON format and commit those changes:

````
./importFromShapefile.sh
````

Please create a [pull request](https://help.github.com/articles/using-pull-requests/) for your changes.
