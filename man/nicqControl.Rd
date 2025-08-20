\name{nicqControl}
\alias{nicqControl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function that returns a list of algorithm controls for nicq
}
\description{
Controls for numeric integration, etc. Mostly used in \code{\link{getfx2}} that is called by \code{\link{nicqTest}}.

Defined as a function instead of a list, so sanity checks can be built in (but none have been included yet). 
}
\usage{
nicqControl(rdig = 5, slowint = FALSE, mint = 100, 
    interr = 10^-3,  epsilon=10^(-4), alpha = 0.025,
    tau.conf.level=0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{rdig}{
number of digits for rounding, used to eliminate some computer errors.  Used in \code{\link{getimaxpower}} called by \code{\link{nicqTest}} when ic="maxpower".

}
  \item{slowint}{
use slow integration for \code{\link{getfx2}}
}
  \item{mint}{
number of summands in numeric integration for \code{\link{getfx2}}
}
  \item{interr}{
tolerance for integration for \code{\link{getfx2}}
}
\item{epsilon}{
small value to give the range for the uniroot function that calculates the confidence intervals. It searches from -q+epsilon to 1-q-epsilon. Used in \code{nicq.calc} called by \code{\link{nicqTest}}.
}
  \item{alpha}{
significance level for calculation of \code{\link{getimaxpower}} called by \code{\link{nicqTest}} when ic="maxpower".
}
\item{tau.conf.level}{
confidence level for tau, where F1(tau)=q. Uses \code{\link[bpcp]{bpcp}} then \code{\link[bpcp]{quantile.kmciLR}}.
}
}
%\details{}
\value{
a list with each argument as a named value
}
%\references{}
%\note{%%  ~~further notes~~}

%%\section{Warning }{....} ~

\seealso{
\code{\link{nicqTest}}
}
%\examples{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{misc}
