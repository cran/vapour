// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// vapour_gdal_version_cpp
Rcpp::CharacterVector vapour_gdal_version_cpp();
RcppExport SEXP _vapour_vapour_gdal_version_cpp() {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    rcpp_result_gen = Rcpp::wrap(vapour_gdal_version_cpp());
    return rcpp_result_gen;
END_RCPP
}
// vapour_all_drivers_cpp
Rcpp::List vapour_all_drivers_cpp();
RcppExport SEXP _vapour_vapour_all_drivers_cpp() {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    rcpp_result_gen = Rcpp::wrap(vapour_all_drivers_cpp());
    return rcpp_result_gen;
END_RCPP
}
// raster_info_cpp
List raster_info_cpp(CharacterVector filename, LogicalVector min_max);
RcppExport SEXP _vapour_raster_info_cpp(SEXP filenameSEXP, SEXP min_maxSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< CharacterVector >::type filename(filenameSEXP);
    Rcpp::traits::input_parameter< LogicalVector >::type min_max(min_maxSEXP);
    rcpp_result_gen = Rcpp::wrap(raster_info_cpp(filename, min_max));
    return rcpp_result_gen;
END_RCPP
}
// raster_gcp_cpp
List raster_gcp_cpp(CharacterVector filename);
RcppExport SEXP _vapour_raster_gcp_cpp(SEXP filenameSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< CharacterVector >::type filename(filenameSEXP);
    rcpp_result_gen = Rcpp::wrap(raster_gcp_cpp(filename));
    return rcpp_result_gen;
END_RCPP
}
// raster_io_cpp
List raster_io_cpp(CharacterVector filename, IntegerVector window, IntegerVector band, CharacterVector resample);
RcppExport SEXP _vapour_raster_io_cpp(SEXP filenameSEXP, SEXP windowSEXP, SEXP bandSEXP, SEXP resampleSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< CharacterVector >::type filename(filenameSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type window(windowSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type band(bandSEXP);
    Rcpp::traits::input_parameter< CharacterVector >::type resample(resampleSEXP);
    rcpp_result_gen = Rcpp::wrap(raster_io_cpp(filename, window, band, resample));
    return rcpp_result_gen;
END_RCPP
}
// sds_info_cpp
CharacterVector sds_info_cpp(const char* pszFilename);
RcppExport SEXP _vapour_sds_info_cpp(SEXP pszFilenameSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const char* >::type pszFilename(pszFilenameSEXP);
    rcpp_result_gen = Rcpp::wrap(sds_info_cpp(pszFilename));
    return rcpp_result_gen;
END_RCPP
}
// vapour_driver_cpp
Rcpp::CharacterVector vapour_driver_cpp(Rcpp::CharacterVector dsource);
RcppExport SEXP _vapour_vapour_driver_cpp(SEXP dsourceSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type dsource(dsourceSEXP);
    rcpp_result_gen = Rcpp::wrap(vapour_driver_cpp(dsource));
    return rcpp_result_gen;
END_RCPP
}
// vapour_layer_names_cpp
Rcpp::CharacterVector vapour_layer_names_cpp(Rcpp::CharacterVector dsource, Rcpp::CharacterVector sql);
RcppExport SEXP _vapour_vapour_layer_names_cpp(SEXP dsourceSEXP, SEXP sqlSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type dsource(dsourceSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type sql(sqlSEXP);
    rcpp_result_gen = Rcpp::wrap(vapour_layer_names_cpp(dsource, sql));
    return rcpp_result_gen;
END_RCPP
}
// vapour_read_attributes_cpp
List vapour_read_attributes_cpp(Rcpp::CharacterVector dsource, Rcpp::IntegerVector layer, Rcpp::CharacterVector sql, Rcpp::IntegerVector limit_n, Rcpp::IntegerVector skip_n, Rcpp::NumericVector ex);
RcppExport SEXP _vapour_vapour_read_attributes_cpp(SEXP dsourceSEXP, SEXP layerSEXP, SEXP sqlSEXP, SEXP limit_nSEXP, SEXP skip_nSEXP, SEXP exSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type dsource(dsourceSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type layer(layerSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type sql(sqlSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type limit_n(limit_nSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type skip_n(skip_nSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type ex(exSEXP);
    rcpp_result_gen = Rcpp::wrap(vapour_read_attributes_cpp(dsource, layer, sql, limit_n, skip_n, ex));
    return rcpp_result_gen;
END_RCPP
}
// vapour_read_geometry_cpp
List vapour_read_geometry_cpp(Rcpp::CharacterVector dsource, Rcpp::IntegerVector layer, Rcpp::CharacterVector sql, Rcpp::CharacterVector what, Rcpp::CharacterVector textformat, Rcpp::IntegerVector limit_n, Rcpp::IntegerVector skip_n, Rcpp::NumericVector ex);
RcppExport SEXP _vapour_vapour_read_geometry_cpp(SEXP dsourceSEXP, SEXP layerSEXP, SEXP sqlSEXP, SEXP whatSEXP, SEXP textformatSEXP, SEXP limit_nSEXP, SEXP skip_nSEXP, SEXP exSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type dsource(dsourceSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type layer(layerSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type sql(sqlSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type what(whatSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type textformat(textformatSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type limit_n(limit_nSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type skip_n(skip_nSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type ex(exSEXP);
    rcpp_result_gen = Rcpp::wrap(vapour_read_geometry_cpp(dsource, layer, sql, what, textformat, limit_n, skip_n, ex));
    return rcpp_result_gen;
END_RCPP
}
// vapour_projection_info_cpp
List vapour_projection_info_cpp(Rcpp::CharacterVector dsource, Rcpp::IntegerVector layer, Rcpp::CharacterVector sql);
RcppExport SEXP _vapour_vapour_projection_info_cpp(SEXP dsourceSEXP, SEXP layerSEXP, SEXP sqlSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type dsource(dsourceSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type layer(layerSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type sql(sqlSEXP);
    rcpp_result_gen = Rcpp::wrap(vapour_projection_info_cpp(dsource, layer, sql));
    return rcpp_result_gen;
END_RCPP
}
// vapour_read_names_cpp
List vapour_read_names_cpp(Rcpp::CharacterVector dsource, Rcpp::IntegerVector layer, Rcpp::CharacterVector sql, Rcpp::IntegerVector limit_n, Rcpp::IntegerVector skip_n, Rcpp::NumericVector ex);
RcppExport SEXP _vapour_vapour_read_names_cpp(SEXP dsourceSEXP, SEXP layerSEXP, SEXP sqlSEXP, SEXP limit_nSEXP, SEXP skip_nSEXP, SEXP exSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type dsource(dsourceSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type layer(layerSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type sql(sqlSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type limit_n(limit_nSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type skip_n(skip_nSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type ex(exSEXP);
    rcpp_result_gen = Rcpp::wrap(vapour_read_names_cpp(dsource, layer, sql, limit_n, skip_n, ex));
    return rcpp_result_gen;
END_RCPP
}
// vapour_report_attributes_cpp
CharacterVector vapour_report_attributes_cpp(Rcpp::CharacterVector dsource, Rcpp::IntegerVector layer, Rcpp::CharacterVector sql);
RcppExport SEXP _vapour_vapour_report_attributes_cpp(SEXP dsourceSEXP, SEXP layerSEXP, SEXP sqlSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type dsource(dsourceSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type layer(layerSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type sql(sqlSEXP);
    rcpp_result_gen = Rcpp::wrap(vapour_report_attributes_cpp(dsource, layer, sql));
    return rcpp_result_gen;
END_RCPP
}
