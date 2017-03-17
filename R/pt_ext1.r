library(dismo)
library(raster)
library(rgdal)

# gis.stackexchange.com/questions/60527/how-to-extract-values-from-rasters-at-location-of-points-in-r

germany.mrc <- gmap("Germany")

# import spatialpointsdataframe
germany.places <- readOGR(dsn = "/path/to/shapefile", layer="places")

# define shapefile crs
projection(germany.places) <- CRS("+proj=lonlat +ellps=WGS84")
# reproject to rasterlayer's crs
germany.places.mrc <- spTransform(germany.places, CRS(projection(germany.mrc)))

set.seed(35)
germany.places.mrc.sample <- germany.places.mrc[sample(nrow(germany.places.mrc), 10),]
