## 2020-05-08 GDAL up/down stuff cribbed from sf
## TODO: see mdsumner/dirigible, we'll have a gdalheaders package
.vapour_cache <- new.env(FALSE, parent=globalenv())


.onLoad = function(libname, pkgname) {
  vapour_load_gdal()
}

.onUnload = function(libname, pkgname) {
  vapour_unload_gdal()
}

.onAttach = function(libname, pkgname) {
  ## provided by R. Bivand #183  
  rver <- version_gdal_cpp()
  if (strsplit(strsplit(rver, ",")[[1]][1], " ")[[1]][2] == "3.6.0") {
    warning("{vapour} package: GDAL 3.6.0 is in use but has been officially retracted; check here for whether its use might affect your work:\nhttps://github.com/OSGeo/gdal/blob/v3.6.1/NEWS.md\n Need help? Contact the maintainer of {vapour}.")
  }
}

vapour_getenv_sql_dialect <- function() {
  Sys.getenv("vapour.sql.dialect")
}
vapour_load_gdal <- function() {
  ## data only on
  ## - windows because tools/winlibs.R
  ## - macos because   CRAN mac binary libs, and configure --with-data-copy=yes --with-proj-data=/usr/local/share/proj
  sql <- Sys.getenv("vapour.sql.dialect")
  if (is.null(sql)) Sys.setenv(vapour_sql_dialect = "")
  ##PROJ  data, only if the files are in package (will fix in gdalheaders)
  if (file.exists(system.file("proj/nad.lst", package = "vapour"))) {
     prj = system.file("proj", package = "vapour")[1L]
     assign(".vapour.PROJ_LIB", Sys.getenv("PROJ_LIB"), envir=.vapour_cache)
     Sys.setenv("PROJ_LIB" = prj)
  }
  if (file.exists(system.file("gdal/epsg.wkt", package = "vapour"))) {
    assign(".vapour.GDAL_DATA", Sys.getenv("GDAL_DATA"), envir=.vapour_cache)
    gdl = system.file("gdal", package = "vapour")[1]
    Sys.setenv("GDAL_DATA" = gdl)
  }

  # here we start calling  vapour functions (this function is called by .onLoad)
  ## .
  out <- register_gdal_cpp()


  out
}
# todo
vapour_unload_gdal <- function() {
  ## PROJ data, only if the files are in package (will fix in gdalheaders)

  if (file.exists(system.file("proj/alaska", package = "vapour")[1L])) {
    Sys.setenv("PROJ_LIB"=get(".vapour.PROJ_LIB", envir=.vapour_cache))
  }
  if (file.exists(system.file("gdal/epsg.wkt", package = "vapour"))) {
    Sys.setenv("GDAL_DATA"=get(".vapour.GDAL_DATA", envir=.vapour_cache))
 }
}
