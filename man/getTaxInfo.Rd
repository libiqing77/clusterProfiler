% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxa.R
\name{getTaxInfo}
\alias{getTaxInfo}
\title{getTaxInfo}
\usage{
getTaxInfo(species, source = "stringdb")
}
\arguments{
\item{species}{scientific name of a species}

\item{source}{one of `stringdb` or `ensembl`}
}
\value{
a `data.frame` of query information
}
\description{
Query taxonomy information from `stringdb` or `ensembl` web services
}
\author{
Guangchuang Yu
}
