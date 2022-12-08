
#define zonalsum function
zonal_mean <- function (x, z, digits = 0, na.rm = FALSE,
                     ...) {
  fun <- function(x) mean(x, na.rm=TRUE)
  vals <- getValues(x)
  zones <- round(getValues(z), digits = digits)
  rDT <- data.table(vals, z=zones)
  setkey(rDT, z)
  rDT[, lapply(.SD, fun), by=z]
}

zonal_sum <- function (x, z, digits = 0, na.rm = FALSE,
                        ...) {
  fun <- function(x) sum(x, na.rm=TRUE)
  vals <- getValues(x)
  zones <- round(getValues(z), digits = digits)
  rDT <- data.table(vals, z=zones)
  setkey(rDT, z)
  rDT[, lapply(.SD, fun), by=z]
}



area_circle <- function(radius) {
  if (!is.numeric(radius)) {
    warning("radius must be numeric")
    return(NA)
  }
  if (radius < 0) {
    warning("radius must be a positive value")
    return(NA)
  }
  area <- pi * radius * radius
  return(area)
}

setwd("C:/TOOLS/R/mypackages")
package.skeleton("myf")
