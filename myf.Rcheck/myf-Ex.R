pkgname <- "myf"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('myf')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("area_circle")
### * area_circle

flush(stderr()); flush(stdout())

### Name: area_circle
### Title: Area of a circle
### Aliases: area_circle
### Keywords: spatial

### ** Examples

 
area_circle(5)


## The function is currently defined as
function (radius) 
{
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



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
