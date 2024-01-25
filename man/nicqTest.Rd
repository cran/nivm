\name{nicqTest}
\alias{nicqTest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Non-inferiority control quantile test
}
\description{
Tests for a difference in proportion of failures between test and control by the time the qth quantile of the contol group has failed. Uses a variable margin function, and the time of the qth quantile of the control group is unknown. 

If the cumulative distributions for the two groups are F1 (control) and F2 (test), then we are interested in the difference: delta=F2(t0)-F1(t0), where F1(t0)=q. Note F1,F2 are unknown and non-parametric, and t0 is unknown. In this case, using a constant delta does not give practical non-inferiority margins, therefore we use a variable margin function, so that we test (when alternative='less')  H0: F2(t) >= g(F1(t)) versus H1: F2(t) < g(F1(t)) for all t.  

The test also works for other types of continuous responses besides time to failure (see details), but the help description uses time to failure for brevity. 
}
\usage{
nicqTest(x,delta0,q,g=nimDiffOR,yc=NULL,nc=NULL,nt=NULL,
    ic="prop",
    z=NULL,status=NULL,ties=c("cons","approx"),
    alternative=c("less","greater"),
    conf.level=0.95,
    conf.int=TRUE,
    conf.sided=c("two.sided","one.sided"), 
    gname=NULL,
    control=nicqControl())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
either a vector of failure times for the both groups (when z is given), a vector of failure times for the test group (when yc is given), or the number of failures in the test group that have occured by the ic^th failure in the control group (when ic is an integer, nc and nt are given). See details.
}
\item{delta0}{
  difference, F2(t0)-F1(t0), on the boundary between the null and alternative hypotheses, where t0 is defined so 
that F1(t0)=q.
}
\item{q}{
  probability associated with the quantile of interest in control group
}
  \item{g}{
non-inferiority margin function. Must have arguments \code{q} (representing the quantile of interest in the control group) and \code{delta} (representing the difference, F2(t0)-F1(t0), where F2 and F2 are the cumulative distributions of failures for the test (F2) and control (F1) at t, where F1(t)=q). Default values for \code{q} and \code{delta} are ignored. Default function is  \code{\link{nimDiffOR}}.
}
  \item{yc}{
vector of failure times in the control group. If given, \code{x} is the vector of failure times in the test group.
}
  \item{nc}{
number of individuals in the control group. Not needed if \code{z} or \code{yc} is given.
}
  \item{nt}{
number of individuals in the test group. Not needed if \code{z} or \code{yc} is given.
}
  \item{ic}{
used to find i.
The test is based on the number of failures in the test group that have occured by the ith failure in the control group. 
ic="prop" gives i=ceiling(q*nc), ic="maxpower" gives the i value that maximizes the power given F1=F2 and g, and ic=a postive integer gives i=ic (with  ic between 1 and nc inclusive).
}
  \item{z}{
a vector of group indicators, with either 1 (for control) or
2 (for test). If given, x is a vector of all failures in both groups.   
}
  \item{status}{
a vector denoting right censoring (0) or not (1). Not needed if there is no censoring. Only used when \code{z} is given. If any censoring occurs at or before the ith failure (see ic argument) in the control group, then the test is undefined. 
}
  \item{ties}{
how should ties be handled, "cons" use a conservative adjustment for ties, "approx" use an approximate adjustment. See  details.
}
  \item{alternative}{
direction of alternative hypothesis.
}
\item{conf.level}{confidence level}
\item{conf.int}{logical, do confidence intervals}
\item{conf.sided}{character, either 'one.sided' or 'two.sided' (see warning)}
\item{gname}{name for g function, if NULL uses name of inputed g function}
\item{control}{
a list of arguments for numeric calculation settings, see \code{\link{nicqControl}}.
}
}
\details{
The data may be entered in 3 different formats, and the first argument \code{x} changes depending on which format. When \code{z} is given then \code{x} is the vector of failure times from both groups and z gives the group membership of each of those failures. If there is right censoring this may be given using \code{status}, and the \code{nicq} function will make sure that the censoring happens late enough so that the test can still be calculated.  When \code{yc} is given then \code{x} is a vector of failure times in the test group and \code{yc} are the failure times in the control group. When \code{ic}  is an integer, then \code{x} represents the number of failure times that have occurred in the test group at or before the time of the icth failure in the control group. In this last format only  \code{nc} (number in control group) and \code{nt} (number in the test group) must be given. 

The confidence interval is calculated on the difference, F2(t0)-F1(t0), where t0 is unknonwn and defined so that F1(t0)=q, with q given.

The responses can be any numeric values, as long as the difference, F2(t0)- F1(t0), is of interest.  

For more details see Fay and Follmann (2015). 


The confidence intervals for the qth quantile of the control is calculated using the \code{\link{bpcp}} function followed by the \code{\link{quantile.kmciLR}} from the \code{bpcp} R package.
}
\value{
An \code{nicq} object which inherits from \code{htest} class (the print method for is slightly different). A list with elements:
\item{statistic}{number of failure in test group at or before the qth quantile of the control group}
\item{parameter}{vector with elements: q (quantile of interest in control group),i (rank of qth quantile), n1 (number in control group), n2 (number in test group) }
\item{p.value}{one-sided p.value}
\item{conf.int}{confidence interval on F2(t0)-F1(t0), may be one- or two-sided, see attributes}
\item{estimate}{vector of estimates. Values are: x2/n2= proportion of failures in test group by  i, i/n1= proportion failures in control group by i, 'x2/n2-i/n1'=difference, tau=qth quantile of control (same at t0), lower CL=lower confidence limit for tau, upper CL, conf.level=conf.level for CI on tau}
\item{null.value}{null value for the difference}
\item{alternative}{either 'less' or 'greater'. two.sided is not allowed}
\item{method}{description of test}
}
\references{
Fay, MP and Follmann DA (2016). Non-inferiority Tests for Anti-Infective Drugs using Control Group Quantiles. Clinical Trials. 13(6): 632-640.
}
\author{
Michael P. Fay (mfay@niaid.nih.gov)
}
%\note{}
\section{warning}{ Since 'two.sided' alternatives are not allowed, the p-values may not match the confidence intervals in the usual way if \code{conf.sided}='two.sided' (the default). Consider the example below, 
with  \code{alternative}='less' and  \code{delta0}=0.10. The p-value is 0.04, so we might expect that the upper limit of the 95 percent confidence limit would be less than 0.10, but this is not so because \code{conf.sided}='two.sided' and we are using the two-sided confidence interval and p is greater than 0.05/2=0.025. }
%\seealso{~~objects to See Also as \code{\link{help}}, ~~~}
\examples{
## if you know that q=0.20 and there are no ties then ic=q*nc=40 
nicqTest(66,g=nimDiffOR,delta0=.1,q=.2,nc=200,nt=300,ic=40,conf.int=FALSE)
## examples with confidence intervals may be slower: see
##  demo(nicqTest.examples)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
