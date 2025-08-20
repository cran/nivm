\name{powerNicqTest}
\alias{powerNicqTest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Power or Sample Size for Non-inferiority Control Quantile Test
}
\description{
Function gives power (if n1=NULL) or sample size (if power=NULL). Assumes no ties.
}
\usage{
powerNicqTest(n1 = NULL, n2 = NULL, power = NULL, 
    sig.level = 0.025, n2.over.n1 = 1, q = 0.2, 
    delta0 = 0.1, alternative = c("less", "greater"), 
    gnull = nimDiffOR, galt = function(x){x}, 
    minn=5, maxn = 10^5, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n1}{
sample size of control group, calculated if NULL
}
  \item{n2}{
sample size of test group. If n1=NULL, n2 is ignored and calculated based on power and n2.over.n1. If power=NULL, then n2=ceiling(n2.over.n1*n1).
}
  \item{power}{
power under galt, calculated if NULL
}
  \item{sig.level}{
significance level
}
  \item{n2.over.n1}{
ratio of sample sizes
}
  \item{q}{
probability associated with control quantile of interest
}
  \item{delta0}{
difference in proportions at control quantile of interest
}
  \item{alternative}{
alternative hypothesis direction, 'less' means F2(t) less than gnull(F1(t)) for some t.
}
  \item{gnull}{
variable margin function under null hypothesis (more formally, at the boundary between the null and alternative hypotheses for the pre-specified hypotheses) 
}
  \item{galt}{
variable margin function for which we calculate the power
}
  \item{minn}{
minimum value for sample size for n1, input into \code{\link[ssanv]{uniroot.integer}}.
}
  \item{maxn}{
maximum value for sample size for n1, input into \code{\link[ssanv]{uniroot.integer}}.
}
\item{\dots}{extra arguments passed to \code{\link[ssanv]{uniroot.integer}}.
}
}
\details{
The function either calculates the power (if n1=NULL) or calculates n1 and n2 (if power=NULL). In the latter case,
we use \code{\link[ssanv]{uniroot.integer}} to find the smallest n1 
that gives power at least as large as the given power [with n2 defined as ceiling(n2.over.n1*n1)].
}
\value{
a \code{power.htest} object. A list with elements:
\item{n1}{sample size for control group}
\item{n2}{sample size for test group}
\item{delta0}{F2(tau)-F1(tau), with tau defined by F1(tau)=q}
\item{q}{probability associated with tau}
\item{sig.level}{significance level}
\item{power}{power under galt}
\item{method}{character description of method}
}
%\references{%}
%\author{%%  ~~who you are~~}
%\note{%%  ~~further notes~~}
\seealso{\code{\link{nicqTest}}}
\examples{
# to calculate power, leave power=NULL and supply n1 and n2
powerNicqTest(n1=200,n2=300)
# or supply n1 and n2.over.n1
powerNicqTest(n1=200,n2.over.n1=3/2)
## to calculate n1 and n2, supply power
## find minimum n1 that have power greater than 0.80
## takes 13 iterations to find n1=346
## so do not run it here
#powerNicqTest(power=.80,print.steps=TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}
