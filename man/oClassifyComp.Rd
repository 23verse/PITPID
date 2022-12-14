% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oClassifyComp.r
\name{oClassifyComp}
\alias{oClassifyComp}
\title{Function to compare prediction performance results}
\usage{
oClassifyComp(
list_pPerf,
displayBy = c("ROC", "PR"),
type = c("bar", "curve"),
sort = FALSE,
detail = TRUE,
facet = FALSE
)
}
\arguments{
\item{list_pPerf}{a list of "pPerf" objects or a "pPerf" object}

\item{displayBy}{which performance will be used for comparison. It can
be "ROC" for ROC curve (by default), "PR" for PR curve}

\item{type}{the type of plot to draw. It can be "bar" for bar plot (by
default) or "curve" for curve plot}

\item{sort}{logical to indicate whether to sort methods according to
performance. By default, it sets FALSE}

\item{detail}{logical to indicate whether to label performance and
score direction (together with methods). By default, it sets TRUE. Only
works for the curve}

\item{facet}{logical to indicate whether to facet/wrap a 1d of panels
into 2d. By default, it sets FALSE. Only works for the curve}
}
\value{
an object of class "ggplot" or NULL (if all input pPerf objects are
NULL)
}
\description{
\code{oClassifyComp} is supposed to compare prediction performance
results. It returns an object of class "ggplot".
}
\note{
none
}
\examples{
\dontrun{
gp <- oClassifyComp(list_pPerf, displayBy="ROC")
print(gp)
## modify legend position
gp + theme(legend.position=c(0.75,0.25))
}
}
\seealso{
\code{\link{oClassifyPerf}}
}
