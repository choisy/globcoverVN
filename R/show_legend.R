#' Show legend
#'
#' Print to screen the legend of a spatial object.
#'
#' @param object an object of type raster
#'
#' @docType methods
#' @rdname show_legend-methods
#' @examples
#' library(raster)
#' landcover <- getgcvn()
#' leg <- show_legend(landcover)
#'
#' colors <- leg$color
#' plot(landcover, col = colors, legend = FALSE, axes = FALSE)
#' l <- length(colors)
#' x <- ceiling(l / 2)
#' sel1 <- 1:x
#' sel2 <- (x + 1):l
#' legend("left", legend = leg$code[sel1], fill = colors[sel1], bty = "n")
#' legend("right", legend = leg$code[sel2], fill = colors[sel2], bty = "n")
#' leg
#' @export
setGeneric("show_legend", function(object) {
  standardGeneric("show_legend")
})



#' @rdname show_legend-methods
setMethod("show_legend", signature(object = "RasterLayer"), function(object) {
  out <- data.frame(landtype = object@legend@names,
                    code     = object@legend@values,
                    color    = object@legend@color, stringsAsFactors = FALSE)
  rownames(out) <- NULL
  cat(paste(c(paste("", out[1:8, "code"], ":", out[1:8, "landtype"]),
              paste(out[9:20, "code"], ":", out[9:20, "landtype"])),
            collapse = "\n"))
  invisible(out)
})
