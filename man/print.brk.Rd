\name{print.brk}
\alias{print.brk}
\alias{print.nicq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print Method for \code{brk} or \code{nicq} Object.
}
\description{
For \code{brk} did not use \code{print.htest} because the p-values are just bounds for some values (e.g., p greater than 0.025). So I needed to print the results differently.

For \code{nicq}, uses \code{print.htest} except for $estimates has some special printing instructions since there may be some extra confidence intervals on the control quantile of interest.
}
\usage{
\method{print}{brk}(x, digits = getOption("digits"), prefix = "\t", \dots)

\method{print}{nicq}(x, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
the \code{brk} object
}
  \item{digits}{
number of significant digits for printing 
}
  \item{prefix}{
prefix below some values
}
  \item{\dots}{
for passing arguments. In \code{nicq} passed to \code{print.htest}.
}
}
%\details{}
\value{
Does not print out FullResults list because it is generally too large.
}
\keyword{misc}
