\name{findPowerR}
\alias{findPowerR}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get power from \code{\link{brkTest}}).
}
\description{
Power under an alternative F1 and F2 relationship, represented by a F2=g(F1).  
}
\usage{
findPowerR(R, g, psearch = (0:1000)/1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{R}{matrix of rejection region, if x is the output from \code{brk.test}, then R=x$FullResults$R
}
\item{g}{function under which to calculate the power, F2=g(F1).}
\item{psearch}{vector of values over which to calculate the power}

}
%\details{Fill in details later. For now see code.}
%\value{}
%\references{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{misc}
