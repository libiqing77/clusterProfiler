% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gson.R
\name{gson_KEGG}
\alias{gson_KEGG}
\title{gson_KEGG}
\usage{
gson_KEGG(species, KEGG_Type = "KEGG", keyType = "kegg")
}
\arguments{
\item{species}{species}

\item{KEGG_Type}{one of "KEGG" and "MKEGG"}

\item{keyType}{one of "kegg", 'ncbi-geneid', 'ncib-proteinid' and 'uniprot'.}
}
\value{
a 'GSON' object
}
\description{
download the latest version of KEGG pathway and stored in a 'GSON' object
}
\author{
Guangchuang Yu
}
