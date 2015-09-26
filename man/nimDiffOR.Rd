\name{nimDiffOR}
\alias{nimDiffOR}
\alias{nimDiff}
\alias{nimOR}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Variable margin functions
}
\description{
For testing the alternative F2(t)< g(F1(t)). We give several built-in choices for the function g.  All functions must be defined in terms of delta and q, where F1(t0)=q and t0 is defined implicitly, and delta = F2(t0) - g(F1(t0)).

}
\usage{
nimDiffOR(p, delta = 0.1, q = 0.2)
nimOR(p, delta=0.1, q=0.2)
nimDiff(p,delta=.1, q=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
a vector of F1(t) values, where F1(t) is the proportion of control that failed by t. 
}
  \item{q}{
the probability associated with the control quantile of interest, not used for calculations in \code{nimDiff} but needs to be in the call.
}
  \item{delta}{
the difference: F2(t0) - g(F1(t0))
}
}
\details{
The functions are defined in terms of \code{delta} and \code{q} so that the function can change as a function of \code{delta} and we can use the function to get confidence intervals for delta (defined in terms of q, since q=F1(t0) which defines t0).  

Functions should handle vectors of F1(t) values, and the output is a vector of the same length. The results should be between 0 and 1.   

The function \code{nimDiffOR} gives the minimum of the difference (defined by delta) or the odds ratio (defined in terms of q and delta) when delta>0, and the maximum when delta<0.


For plots of the functions see Fay and Follmann (2015). 
}
\value{
a vector of values g(F1(t)).
}
\references{Fay, MP and Follmann DA (2015). Non-inferiority Tests for Anti-Infective Drugs using Control Quantiles. (unpublished manuscript).}
%\author{%%  ~~who you are~~}
%\note{%%  ~~further notes~~}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{nicqTest}}
}
\examples{
## notice that the second values, F1(t)=0.20=q, 
## all equal 
##  q+delta=0.30
nimDiff(c(1:9)/10)
nimOR(c(1:9)/10)
nimDiffOR(c(1:9)/10)
## for delta<0, take max of difference and odds ratio
nimDiffOR(c(1:9)/10,delta=-.1)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{misc}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
