## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  out.width = "100%"
)

## -----------------------------------------------------------------------------
pfile <- system.file("extdata", "point.shp", package = "vapour")
library(vapour)
vapour_read_fields(pfile)

## -----------------------------------------------------------------------------
mvfile <- system.file("extdata", "tab", "list_locality_postcode_meander_valley.tab", package="vapour")

dat <- as.data.frame(vapour_read_fields(mvfile),  stringsAsFactors = FALSE)

dim(dat)

head(dat)

## -----------------------------------------------------------------------------
vapour_read_geometry(pfile)[5:6]  ## format = "WKB"

vapour_read_geometry_text(pfile)[5:6]  ## format = "json"

vapour_read_geometry_text(pfile, textformat = "gml")[2]

## don't do this with a non-longlat data set like cfile
vapour_read_geometry_text(pfile, textformat = "kml")[1:2]

cfile <- system.file("extdata/sst_c.gpkg", package = "vapour")
str(vapour_read_geometry_text(cfile, textformat = "wkt")[1:2])


## -----------------------------------------------------------------------------
dat <- as.data.frame(vapour_read_fields(cfile),  stringsAsFactors = FALSE)
dat$wkt <- vapour_read_geometry_text(cfile, textformat = "wkt")
head(dat)

## -----------------------------------------------------------------------------
mvfile <- system.file("extdata", "tab", "list_locality_postcode_meander_valley.tab", package="vapour")
str(head(vapour_read_extent(mvfile)))


## -----------------------------------------------------------------------------

vapour_geom_summary(mvfile)

## ----skip-limit---------------------------------------------------------------
vapour_geom_summary(mvfile, limit_n = 4)$FID

vapour_geom_summary(mvfile, skip_n = 2, limit_n = 6)$FID

vapour_geom_summary(mvfile, skip_n = 6)$FID


## ----raster-------------------------------------------------------------------
f <- system.file("extdata", "sst.tif", package = "vapour")
vapour_raster_info(f)


## ----raster-read--------------------------------------------------------------
vapour_read_raster(f, window = c(0, 0, 6, 5))

## the final two arguments specify up- or down-sampling
## controlled by resample argument
vapour_read_raster(f, window = c(0, 0, 6, 5, 8, 9))

## if window is not included, and native TRUE then we get the entire window
str(vapour_read_raster(f, native = TRUE))

## notice this is the length of the dimXY above
prod(vapour_raster_info(f)$dimXY)


## ----gdal-flex----------------------------------------------------------------
mm <- matrix(vapour_read_raster(f, native = TRUE)[[1]], 
      vapour_raster_info(f)$dimXY)
mm[mm < -1e6] <- NA
image(mm[,ncol(mm):1], asp = 2)

## -----------------------------------------------------------------------------
## note, this code assumes OGRSQL dialect
current_dialect <- Sys.getenv("vapour.sql.dialect")
Sys.unsetenv("vapour.sql.dialect")  ## ensure that default dialect is used 
## (in this case it's 'OGRSQL' but we only want to record the state and reset after)
## later on, when done do Sys.setenv(vapour.sql.dialect = current_dialect)


vapour_read_fields(mvfile, sql = "SELECT NAME, PLAN_REF FROM list_locality_postcode_meander_valley WHERE POSTCODE < 7291")
vapour_read_fields(mvfile, sql = "SELECT NAME, PLAN_REF, FID FROM list_locality_postcode_meander_valley WHERE POSTCODE = 7306")


## -----------------------------------------------------------------------------
library(vapour)
file0 <- "list_locality_postcode_meander_valley.tab"
mvfile <- system.file("extdata/tab", file0, package="vapour")
layer <- gsub(".tab$", "", basename(mvfile))
## get the number of features by FID (DISTINCT should be redundant here)
vapour_read_fields(mvfile, sql = sprintf("SELECT COUNT(DISTINCT FID) AS nfeatures FROM %s", layer))

## note how TAB is 1-based 
vapour_read_fields(mvfile, sql = sprintf("SELECT COUNT(*) AS n FROM %s WHERE FID < 2", layer))

## but SHP is 0-based
shp <- system.file("extdata/point.shp", package="vapour")
vapour_read_fields(shp, sql = sprintf("SELECT COUNT(*) AS n FROM %s WHERE FID < 2", "point"))

## ----restore------------------------------------------------------------------
Sys.setenv(vapour.sql.dialect = current_dialect)

## ----dialect------------------------------------------------------------------
## good citizenry
current_dialect <- Sys.getenv("vapour.sql.dialect")
Sys.setenv(vapour.sql.dialect = "SQLITE")

## now we can use SQLITE dialect with TAB
vapour_read_fields(mvfile, sql = sprintf("SELECT st_area(GEOMETRY) AS area FROM %s LIMIT 1 ", layer))

## but with OGRSQL we need
Sys.setenv(vapour.sql.dialect = "OGRSQL")
vapour_read_fields(mvfile, sql = sprintf("SELECT OGR_GEOM_AREA AS area FROM %s LIMIT 1 ", layer))


## ----GDAL-info----------------------------------------------------------------
vapour_gdal_version()

str(vapour_all_drivers())


## ----GDAL-driver--------------------------------------------------------------
vapour_driver(mvfile)

