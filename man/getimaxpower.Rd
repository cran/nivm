\name{getimaxpower}
\alias{getimaxpower}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get i that maiximizes power when F1=F2 for a specified g function
}
\description{ Usually not directly called, called by \code{\link{nicqTest}}.}
\usage{
getimaxpower(n1, n2, g, alpha = 0.05, rdig = 5, maxprop=1, alt="less", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n1}{
number in control group
}
  \item{n2}{
number in test group
}
  \item{g}{
function
}
  \item{alpha}{
alpha level
}
  \item{rdig}{
number of rounding digits
}
  \item{\dots}{
for passing arguments
}
}
%\details{}
\value{
the i value
}
%\references{}
%\examples{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
