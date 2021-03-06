% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discovery_prediction.R
\name{generate_result_grid}
\alias{generate_result_grid}
\title{Generate result_grid from musica based on annotation and range of k}
\usage{
generate_result_grid(
  musica,
  table_name,
  algorithm = "lda",
  annotation = NA,
  k_start,
  k_end,
  n_start = 1,
  seed = NULL,
  par_cores = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{musica}{A \code{\linkS4class{musica}} object.}

\item{table_name}{Name of table used for signature discovery}

\item{algorithm}{Algorithm for signature discovery}

\item{annotation}{Sample annotation to split results into}

\item{k_start}{Lower range of number of signatures for discovery}

\item{k_end}{Upper range of number of signatures for discovery}

\item{n_start}{Number of times to discover signatures and compare based on
posterior loglikihood}

\item{seed}{Seed to use for reproducible results, set to null to disable}

\item{par_cores}{Number of parallel cores to use (NMF only)}

\item{verbose}{Whether to output loop iterations}
}
\value{
A result object containing signatures and sample weights
}
\description{
Generate result_grid from musica based on annotation and range of k
}
\examples{
data(musica_sbs96)
grid <- generate_result_grid(musica_sbs96, "SBS96", "lda", k_start = 2, 
k_end = 5)
}
