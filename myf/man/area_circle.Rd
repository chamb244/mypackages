\name{area_circle}

\alias{area_circle}


\title{
Area of a circle
}

\description{
Compute the area of a circle by providing the radius.
}

\usage{
area_circle(radius)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{radius}{numeric. Cannot be negative.}
}
\details{
Nothing more to say...
}
\value{
numeric
}
\references{
Pythagoras, 980}
\author{
j.chamberlin
}
\note{
Apples and oranges....}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{length}}, ~~~
}
\examples{
 
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{ spatial }
% \keyword{ utilities }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
\concept{ workshop }
\concept{ self-improvement }
% Use only one concept per line.
