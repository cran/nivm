\name{getfx2}
\alias{getfx2}
\alias{nicqCalc}
\alias{nicqGetpvalue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal functions for \code{\link{nicqTest}}.
}
\description{
 Usually not directly called, called by \code{\link{nicqTest}}. 
}
\usage{
getfx2(i, n1, n2, g, slowint = FALSE, mint = 100, interr = 10^-3)
nicqCalc(X2T1i,g,i0,n1,n2,delta0=.10,q0=.20,
    conf.int=TRUE,
    conf.level=0.95,
    conf.sided=c("two.sided","one.sided"), alternative="less",
    control=nicqControl())

nicqGetpvalue(X2T1i,n1,n2,g,i0,alternative="less",
control=nicqControl())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{i}{
ic value
}
  \item{n1}{
number in control group
}
  \item{n2}{
number in test group
}
  \item{g}{
function
}
  \item{slowint}{
logical, if true use built-in integrate function. But this is slower.
}
  \item{mint}{
number of trapizoids for calculation with slowint=FALSE
}
  \item{interr}{
tolerance for integration
}
}
\details{
The function \code{getfx2} gets probability mass function for x2=number of failures in the test group at or before the ith failure in the control group. Uses very simple numeric integration (slowint=FALSE) that just adds mint trapazoids (rectangles with triangle tops).




}
\value{
vector of probabilities for all possible x2 values, forced to sum to 1. 
}
\keyword{internal}
