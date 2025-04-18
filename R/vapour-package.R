#' vapour
#'
#' A lightweight GDAL API package for R.
#'
#'
#' Provides low-level access to 'GDAL' functionality for R packages. The aim is
#' to minimize the level of interpretation put on the 'GDAL' facilities, to
#' enable direct use of it for a variety of purposes. 'GDAL' is the 'Geospatial
#' Data Abstraction Library' a translator for raster and vector geospatial data
#' formats that presents a single raster abstract data model and single vector
#' abstract data model to the calling application for all supported formats
#' <https://gdal.org/>.
#'
#' Lightweight means we access parts of the GDAL API as near as possible to
#' their native usage. GDAL is not a lightweight library, but provide a very
#' nice abstraction over format details for a very large number of different
#' formats.
#'
#' Functions for raster and vector sources are included.
#'
#' \tabular{ll}{ \code{\link{vapour_all_drivers}}         \tab list of all
#' available drivers, with type and features \cr \code{\link{vapour_driver}}
#' \tab report short name of driver that will be used for a data source \cr
#' \code{\link{vapour_gdal_version}}        \tab report version of GDAL in use
#' \cr \code{\link{vapour_srs_wkt}}        \tab produce WKT projection string
#' from various projection string inputs \cr \code{\link{vapour_vsi_list}}
#' \tab report contents of VSI sources \cr
#'
#' }
#'
#' \tabular{ll}{ \code{\link{vapour_raster_gcp}}        \tab return internal
#' ground control points, if present \cr \code{\link{vapour_raster_info}}
#' \tab structural metadata of a source \cr \code{\link{vapour_read_raster}}
#' \tab read data direct from a window of a raster band source \cr
#' \code{\link{vapour_sds_names}}          \tab list individual raster sources
#' in a source containing subdatasets \cr \code{\link{vapour_warp_raster}}  \tab
#' read data direct from a raster source into a specific window \cr }
#'
#' \tabular{ll}{ \code{\link{vapour_driver}}             \tab report name of the
#' driver used for a given source \cr \code{\link{vapour_geom_name}}       \tab
#' report attribute name of geometry \cr \code{\link{vapour_geom_summary}}
#' \tab report simple properties of each feature geometry \cr
#' \code{\link{vapour_layer_names}}        \tab list names of vector layers in a
#' data source \cr \code{\link{vapour_layer_info}} \tab list of data source,
#' driver, layer name/s, fields, feature count, projection \cr
#' \code{\link{vapour_read_extent}}        \tab read the extent, or bounding
#' box, of geometries in a layer \cr \code{\link{vapour_read_fields}}    \tab
#' read attributes of features in a layer, the columnar data associated with
#' each geometry \cr \code{\link{vapour_read_geometry}}      \tab read geometry
#' in binary (blob, WKB) form \cr \code{\link{vapour_read_geometry_ia}} \tab
#' read geometry by index, arbitrary \cr \code{\link{vapour_read_geometry_ij}}
#' \tab read geometry by sequential index, i to j \cr
#' \code{\link{vapour_read_geometry_text}} \tab read geometry in text form,
#' various formats \cr \code{\link{vapour_read_names}}         \tab read the
#' 'names' of features in a layer, the 'FID' \cr \code{\link{vapour_read_type}}
#' \tab read the GDAL types of attributes \cr \code{\link{vapour_report_fields}}
#' \tab report internal type of each attribute by name \cr }
#'
#' As far as possible vapour aims to minimize the level of interpretation
#' provided for the functions, so that developers can choose how things are
#' implemented. Functions return raw lists or vectors rather than data frames or
#' classed types.
#'
#' @section options:
#'
#'   The following options can be set to control global behaviour.
#'
#'   \tabular{ll}{ \code{Sys.getenv("vapour.sql.dialect")} \tab the current SQL
#'   dialect in use \cr }
#'
#' @section SQL dialect:
#'
#'   The SQL dialect can be set to "" (empty string), "OGRSQL", or "SQLITE".
#'
#'   The empty string indicates that the native dialect will be used, see
#'   [OGRSQL and SQLITE for GDAL(https://gdal.org/en/stable/user/ogr_sql_sqlite_dialect.html) and the
#'   [GDAL_DMD_SUPPORTED_SQL_DIALECTS development documentation](https://gdal.org/en/stable/api/raster_c_api.html).
#'   
#'  Setting "NATIVE" as an alias for "" is quite recent and has not been tested with vapour, similarly no testing has been done
#'  with non OGRSQL-native or SQLITE-native drivers yet. 
#'  
#' @name vapour-package
#' @aliases vapour
#' @useDynLib vapour
#' @importFrom Rcpp sourceCpp
"_PACKAGE"

#' SST contours
#'
#' Southern Ocean GHRSST contours in sf data frame from 2017-07-28, read from
#'
#' podaac-ftp.jpl.nasa.gov/allData/ghrsst/data/GDS2/L4
#' GLOB/JPL/MUR/v4.1/2017/209/
#' 20170728090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
#'
#' See data-raw/sst_c.R for the derivation column \code{sst_c} in Celsius.
#'
#' Also stored in FlatGeoBuf format in
#' \code{system.file("extdata/sst_c.fgb", package = "vapour")}
#' @docType data
#' @name sst_c
#' @examples
#' f <- system.file("extdata/sst_c.fgb", package = "vapour")
#'
#' ## create a class-less form of the data in the 'sst_c.fgb' file  with GeoJSON geometry
#' atts <- vapour_read_fields(f)
#' dat <- as.data.frame(atts, stringsAsFactors = FALSE)
#' dat[["json"]] <- vapour_read_geometry_text(f)
#' names(dat)
#' names(sst_c)
NULL


#' Example WKT coordinate reference system
#'
#' A Lambert Azimuthal Equal Area Well-Known-Text string for a region
#' centred on Tasmania.
#'
#' Created from '+proj=laea +lon_0=147 +lat_0=-42 +datum=WGS84'.
#' For use in a future warping example.
#' @docType data
#' @name tas_wkt
NULL
