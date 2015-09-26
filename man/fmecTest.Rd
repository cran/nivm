\name{fmecTest}
\alias{fmecTest}
\alias{fmecExact}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Odds Ratio/Difference Non-inferiority tests
}
\description{
Rohmel and Keier (2013) developed these non-inferioirty tests with variable margins. One margin function, NiM3, has the variable margin measuring a constant difference in proportions  (0.10 in paper) after a threshold (0.20 proportion in the control group), or tests for differences defined in terms of a constant odds ratio (1.71 in paper) at values less than the threshold.  The \code{fmecTest} with type='max' gives the maximum of two p-values, either a difference in proportions test (one-sided asymptotic method of Farrington and Manning, 1990) or an odds ratio test (one-sided Fisher's exact). This test is NiM3/T2 in Rohmel and Keier (2013). We also provide an exact version of this test with \code{fmecExact}, denoted NiM3/T3 in Rohmel and Keier (2013). When type='switch' the tests are like T1 of Rohmel and Keier (2013).
}
\usage{
fmecTest(x1, n1, x2, n2, threshold = 0.2, delta = 0.1,
    alternative = c("less","greater"), 
    type = c("max", "switch"))

fmecExact(x1, n1, x2, n2, threshold = 0.2, delta = 0.1, 
    alternative = c("less", "greater"), 
    type = c("max", "switch"), ngrid = 1000)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x1}{
number of failures in control group
}
  \item{n1}{
number of individuals in control group
}
  \item{x2}{
number of failures in test group
}
  \item{n2}{
number of individuals in test group
}
  \item{threshold}{
threshold on proportion in control group: above it use constant difference margin, below it use difference margin with constant odds ratio
}
  \item{delta}{
difference margin at threshold
}
  \item{alternative}{
must be 'less'. the value 'greater' is not supported at this time.
}
  \item{type}{
either 'max' (maximum of Fisher's exact p-value or Farrington and Manning p-value) or 'switch' (Fisher's exact p-value below threhold and Farington and Manning p-value above threhold).
}
\item{ngrid}{
grid size for the search for the maximum p-value. Search over the control proportion values 0:ngrid/ngrid. 
}
}
\details{
For details see Rohmel and Keier (2013, Section 3). These functions only use NiM3.
}
\value{
a list of class 'htest':
\item{statistic}{the threshold, delta (difference margin at threshold), and odds ratio at threshold}
\item{data.name}{ gives x1,x2,n1,n2 as a character string}
\item{method}{description of test}
\item{p.value}{one-sided p-value}
\item{null.value}{delta, the difference margin at threshold}
\item{alternative}{direction of alternative hypothesis}
}
\references{
Farrington, CP and Manning G (1990). "Test statistics and sample size formulae for comparative binomial trials with null hypothesis of non-zero risk difference or non-unit relative risk" Statistics in Medicine 9:1447-1454.

Rohmel, J, and Kieser, M (2013). "Investigations on non-inferiority - -  the Food and Drug Administration draft guidance on treatments for nosocomial pneumonia as a case for exact tests for binomial proportions" Statistics in Medicine 32:2335-2348.
}
\author{
Michael P. Fay
}
\seealso{ \code{\link{nicqTest}}
}
\examples{
fmecTest(6,10,2,12,alternative="less",type="max")
fmecExact(6,10,2,12,alternative="less",type="max")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}
