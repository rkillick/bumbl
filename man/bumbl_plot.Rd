% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{bumbl_plot}
\alias{bumbl_plot}
\title{Plot observed and fitted results from bumbl()}
\usage{
bumbl_plot(bumbldf, gg = FALSE)
}
\arguments{
\item{bumbldf}{A dataframe produced by \code{bumbl()}}

\item{gg}{use \code{ggplot2} for plotting}
}
\value{
if \code{gg = TRUE}, returns a \code{\link[ggplot2:ggplot]{ggplot}}
object, otherwise returns (invisibly) a list of data frames used for
creating the plots.
}
\description{
Plot observed and fitted results from bumbl()
}
\examples{
colonyID_subset <- sample(bombus$colony, 10)
colony_subset <- bombus[bombus$colony \%in\% colonyID_subset, ]
results <- bumbl(colony_subset, colonyID = colony, t = week,
                 formula = log(mass) ~ week)
bumbl_plot(results)
}
