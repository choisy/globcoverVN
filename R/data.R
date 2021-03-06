#' Land cover by province for Vietnam
#'
#' An object of class \code{SpatialPolygonsDataFrame} containing the polygons of the
#' provinces of Vietnam as of after 2008 and the land cover proportions weighted
#' or not by the local human population density.
#'
#' The land cover data come from the \href{http://due.esrin.esa.int/page_globcover.php}{GlobCover}
#' project as available from the current package through the function \code{getgcvn}
#' function, the local human population density data come from the
#' \href{http://www.worldpop.org.uk}{WorldPop} project as available from the
#' \code{worldpop} and \code{worldpopVN} packages and the polygons of the
#' provinces of Vietnam come from the \href{http://www.gadm.org}{GADM} project
#' as available from the \code{gadmVN} package.
#'
#' @format The \code{data} slot of the \code{provinces} object is a data frame
#' with 63 rows and 41 variables:
#' \itemize{
#'  \item \code{province}: province name
#'  \item \code{11}: percentage of post-flooding or irrigated croplands (or aquatic)
#'  \item \code{14}: percentage of rainfed croplands
#'  \item \code{20}: percentage of mosaic cropland (50-70%) / vegetation (grassland/shrubland/forest) (20-50%)
#'  \item \code{30}: percentage of mosaic vegetation (grassland/shrubland/forest) (50-70%) / cropland (20-50%)
#'  \item \code{40}: percentage of closed to open (>15%) broadleaved evergreen or semi-deciduous forest (>5m)
#'  \item \code{50}: percentage of closed (>40%) broadleaved deciduous forest (>5m)
#'  \item \code{60}: percentage of open (15-40%) broadleaved deciduous forest/woodland (>5m)
#'  \item \code{70}: percentage of closed (>40%) needleleaved evergreen forest (>5m)
#'  \item \code{100}: percentage of closed to open (>15%) mixed broadleaved and needleleaved forest (>5m)
#'  \item \code{110}: percentage of mosaic forest or shrubland (50-70%) / grassland (20-50%)
#'  \item \code{120}: percentage of mosaic grassland (50-70%) / forest or shrubland (20-50%)
#'  \item \code{130}: percentage of closed to open (>15%) (broadleaved or needleleaved, evergreen or deciduous) shrubland (<5m)
#'  \item \code{140}: percentage of closed to open (>15%) herbaceous vegetation (grassland, savannas or lichens/mosses)
#'  \item \code{150}: percentage of sparse (<15%) vegetation
#'  \item \code{160}: percentage of closed to open (>15%) broadleaved forest regularly flooded (semi-permanently or temporarily) - fresh or brackish water
#'  \item \code{170}: percentage of closed (>40%) broadleaved forest or shrubland permanently flooded - saline or brackish water
#'  \item \code{190}: percentage of artificial surfaces and associated areas (urban areas >50%)
#'  \item \code{200}: percentage of bare areas
#'  \item \code{210}: percentage of water bodies
#'  \item \code{220}: percentage of permanent snow and ice
#'  \item \code{11_pop}: percentage of post-flooding or irrigated croplands (or aquatic), weighted by local human population density
#'  \item \code{14_pop}: percentage of rainfed croplands, weighted by local human population density
#'  \item \code{20_pop}: percentage of mosaic cropland (50-70%) / vegetation (grassland/shrubland/forest) (20-50%), weighted by local human population density
#'  \item \code{30_pop}: percentage of mosaic vegetation (grassland/shrubland/forest) (50-70%) / cropland (20-50%), weighted by local human population density
#'  \item \code{40_pop}: percentage of closed to open (>15%) broadleaved evergreen or semi-deciduous forest (>5m), weighted by local human population density
#'  \item \code{50_pop}: percentage of closed (>40%) broadleaved deciduous forest (>5m), weighted by local human population density
#'  \item \code{60_pop}: percentage of open (15-40%) broadleaved deciduous forest/woodland (>5m), weighted by local human population density
#'  \item \code{70_pop}: percentage of closed (>40%) needleleaved evergreen forest (>5m), weighted by local human population density
#'  \item \code{100_pop}: percentage of closed to open (>15%) mixed broadleaved and needleleaved forest (>5m), weighted by local human population density
#'  \item \code{110_pop}: percentage of mosaic forest or shrubland (50-70%) / grassland (20-50%), weighted by local human population density
#'  \item \code{120_pop}: percentage of mosaic grassland (50-70%) / forest or shrubland (20-50%), weighted by local human population density
#'  \item \code{130_pop}: percentage of closed to open (>15%) (broadleaved or needleleaved, evergreen or deciduous) shrubland (<5m), weighted by local human population density
#'  \item \code{140_pop}: percentage of closed to open (>15%) herbaceous vegetation (grassland, savannas or lichens/mosses), weighted by local human population density
#'  \item \code{150_pop}: percentage of sparse (<15%) vegetation, weighted by local human population density
#'  \item \code{160_pop}: percentage of closed to open (>15%) broadleaved forest regularly flooded (semi-permanently or temporarily) - fresh or brackish water, weighted by local human population density
#'  \item \code{170_pop}: percentage of closed (>40%) broadleaved forest or shrubland permanently flooded - saline or brackish water, weighted by local human population density
#'  \item \code{190_pop}: percentage of artificial surfaces and associated areas (urban areas >50%), weighted by local human population density
#'  \item \code{200_pop}: percentage of bare areas, weighted by local human population density
#'  \item \code{210_pop}: percentage of water bodies, weighted by local human population density
#'  \item \code{220_pop}: percentage of permanent snow and ice, weighted by local human population density
#' }
#'
#' @source \href{http://due.esrin.esa.int/page_globcover.php}{GlobCover}.
"provinces"
