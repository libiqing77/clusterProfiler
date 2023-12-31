% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simplify.R
\docType{methods}
\name{simplify}
\alias{simplify}
\alias{simplify,enrichResult-method}
\alias{simplify,gseaResult-method}
\alias{simplify,compareClusterResult-method}
\title{simplify method}
\usage{
\S4method{simplify}{enrichResult}(
  x,
  cutoff = 0.7,
  by = "p.adjust",
  select_fun = min,
  measure = "Wang",
  semData = NULL
)

\S4method{simplify}{gseaResult}(
  x,
  cutoff = 0.7,
  by = "p.adjust",
  select_fun = min,
  measure = "Wang",
  semData = NULL
)

\S4method{simplify}{compareClusterResult}(
  x,
  cutoff = 0.7,
  by = "p.adjust",
  select_fun = min,
  measure = "Wang",
  semData = NULL
)
}
\arguments{
\item{x}{output of enrichGO}

\item{cutoff}{similarity cutoff}

\item{by}{feature to select representative term, selected by 'select_fun' function}

\item{select_fun}{function to select feature passed by 'by' parameter}

\item{measure}{method to measure similarity}

\item{semData}{GOSemSimDATA object}
}
\value{
updated enrichResult object

updated compareClusterResult object
}
\description{
simplify output from enrichGO and gseGO by removing redundancy of enriched GO terms

simplify output from compareCluster by removing redundancy of enriched GO terms
}
\references{
issue #28
\url{https://github.com/GuangchuangYu/clusterProfiler/issues/28}

issue #162
\url{https://github.com/GuangchuangYu/clusterProfiler/issues/162}
}
\author{
Guangchuang Yu

Gwang-Jin Kim and Guangchuang Yu
}
