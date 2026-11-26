## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(vapour)

## a MapInfo TAB file of polygons (localities)
mvfile <- system.file("extdata/tab/list_locality_postcode_meander_valley.tab",
                      package = "vapour")

## a shapefile of points
pfile <- system.file("extdata/point.shp", package = "vapour")

## ----count--------------------------------------------------------------------
n <- length(vapour_read_names(mvfile))
n

## ----all----------------------------------------------------------------------
g <- vapour_read_geometry(mvfile)   # a list of raw WKB, one per feature
length(g)
g[[1]][1:8]                         # first bytes of the first geometry

## the matching feature identifiers
head(vapour_read_names(mvfile))

## ----all-extent---------------------------------------------------------------
str(vapour_read_extent(mvfile)[1:2])
table(vapour_read_type(mvfile))

## ----ij-----------------------------------------------------------------------
ij <- vapour_read_geometry_ij(mvfile, ij = c(0, 2))   # the first three features
length(ij)

## ----ia-----------------------------------------------------------------------
ia <- vapour_read_geometry_ia(mvfile, ia = c(2, 0, 0))
length(ia)

## ----fa-----------------------------------------------------------------------
sql <- "SELECT * FROM list_locality_postcode_meander_valley WHERE FID IN (2, 5, 9)"
wkt <- vapour_read_geometry_text(mvfile, sql = sql, textformat = "wkt")
length(wkt)
substr(wkt[[1]], 1, 50)

## ----text---------------------------------------------------------------------
substr(vapour_read_geometry_text(pfile, textformat = "wkt")[[1]], 1, 40)

