\name{brkControl}
\alias{brkControl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Arguments for Algorithm Control for \code{\link{brkTest}}.
}
\description{
Function that gives a list. 
}
\usage{
brkControl(alpha = 0.025, alphastar = 0.001, ngrid = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level for test
}
  \item{alphastar}{
a value that is much much less than the significance level. Used to speed up calculations since we group all values less than alphastar together and do not need to add them one-at-a-time.
}
  \item{ngrid}{
number of elements in the grid search over the control proportion.
}
}
%\details{}
\value{
a list with values names the same as the arguments.
}
\seealso{
\code{\link{brkTest}}
}
\keyword{misc}