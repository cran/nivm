\name{brkTest}
\alias{brkTest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Barnard-Rohmel-Kieser Test
}
\description{
A variable margin difference in proportion test for non-inferiority. The test is based on Barnard's test.
}
\usage{
brkTest(x1, n1, x2, n2, threshold = 0.2, delta = 0.1, control = brkControl())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x1}{
number of events in the control group
}
  \item{n1}{
number of individuals in the control group
}
  \item{x2}{
number of events in the test group
}
  \item{n2}{
number of events in the test group
}
  \item{threshold}{
proportion in the control group associated with the threshold, above that threshold use a constant difference margin, below the 
threshold use a difference margin with a constant odds ratio. We use only continuous variable margins that meet at the threshold.
}
  \item{delta}{
difference in proportions at the threshold
}
  \item{control}{
list of parameters for algorithm control, see \code{\link{brkControl}}
}
}
\details{
This test is labeled T4 in Rohmel and Keiser (2013).
}
\value{
a list of class \code{brk}, with elements:
\item{statistic}{the threshold, delta (difference margin at threshold), and odds ratio at threshold}
\item{data.name}{ gives x1,x2,n1,n2 as a character string}
\item{method}{description of test}
\item{p.value}{one-sided p-value}
\item{FullResults}{a list with 4 matrices, each n1+1 by n2+1 representing the total sample space. R=a matrix with logical values with TRUE elements representing the rejection region, its 'sig.level' attribute gives the significance level of the test; 
PVALbounds=a matrix of p-value bounds, pb; PVALsymbols=a matrix of symbols that describe the pb, '<=' means 'p<=pb',  '=' means 'p=pb' and  '>' means 'p>pb'; PVALUES=a matrix giving the p-value expression, e.g., 'p<=.00321' or 'p>0.025'.  
}
}
\references{

Rohmel, J, and Kieser, M (2013). "Investigations on non-inferiority - - the Food and Drug Administration draft guidance on treatments for nosocomial pneumonia as a case for exact tests for binomial proportions" Statistics in Medicine 32:2335-2348.
}
\author{
Michael P. Fay
}
%\note{}

%\section{Warning }{....} ~

\seealso{See Also \code{\link{nicqTest}}, ~~~}
\examples{
x<-brkTest(3,8,0,6)
x
x$FullResults$PVALUES
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}