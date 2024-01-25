\name{getPossibleR}
\alias{getPossibleR}
\alias{getR}
\alias{getpadd}
\alias{getij}
\alias{getieje}
\alias{getfij}
\alias{findPower}
\alias{FarrMann}
\alias{EC}
\alias{brkCalc}


%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal functions used for tests from Rohmel and Kieser ( \code{\link{fmecTest}}, \code{\link{fmecExact}}, and \code{\link{brkTest}}).
}
\description{
Not to be called directly.
}
\usage{
brkCalc(n1, n2, threshold, delta, g = nimDiffOR, 
    alpha = 0.025, alphastar = 0.001, ngrid = 1000)

EC(X1, X2, M1, M2, or = 1.71, alternative = c("less", "greater", "two.sided"))

FarrMann(X1, X2, M1, M2, delta0, 
    alternative = c("less", "greater", "two.sided"), 
    fudgeDigits = 8)

findPower(ir, jr, n1, n2, psearch, qsearch)

getfij(n1, n2, p, q)

getieje(ir, jr)

getij(R)

getPossibleR(ie, je, n1, n2, decreasei = TRUE, increasej = TRUE)
getpadd(i, j, n1, n2, psearch, qsearch)
getR(i, j, n1, n2)


}
%- maybe also 'usage' for other objects documented here.
%\arguments{}
\details{Fill in details later. For now see code.}
%\value{}
%\references{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
