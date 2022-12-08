
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
