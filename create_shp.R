#Load Libraries
library(maps)
library(raster)
library(mapview)
library(tidyverse)
library(dplyr)
library(sf)
library(spatstat)
library(sp)
library(maps)
library(plyr)
library(viridis)


#Load Data 
GMPD = read.csv("./GMPD.csv")


protected_areas1 = st_read("./areas/protected_areas1.shp")
protected_areas2 = st_read("./areas/protected_areas2.shp")
protected_areas3 = st_read("./areas/protected_areas3.shp")

protected_areas = rbind(protected_areas1, protected_areas2, protected_areas3)
protected_areas = st_as_sf(protected_areas, coords = c('Longitude', 'Latitude'))
protected_areas = st_transform(protected_areas,CRS("+proj=longlat"))

#Filer out observations that are missing spatial data
GMPD = GMPD %>% filter(Longitude != "NA")

#Save dataset as a simple shapefile
gmpd_sf = st_as_sf(GMPD, coords = c('Longitude', 'Latitude'), crs = st_crs(protected_areas))
