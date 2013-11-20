\name{piaac}
\alias{aut}
\alias{bel}
\alias{can}
\alias{cze}
\alias{deu}
\alias{dnk}
\alias{esp}
\alias{est}
\alias{fin}
\alias{fra}
\alias{gbr}
\alias{irl}
\alias{ita}
\alias{jpn}
\alias{kor}
\alias{nld}
\alias{nor}
\alias{pol}
\alias{rus}
\alias{svk}
\alias{swe}
\alias{usa}
\docType{data}
\title{Country data from Programme for the International Assessment of Adult Competencies (PIAAC)}
\description{
Following datasets are avaliable in this package:
aut bel can cze deu dnk esp est fin fra gbr irl ita jpn kor nld nor pol rus svk swe usa

Each dataset contain data from a single country. For each package a *dict version is avaliable with column descriptions.
I.e. for pol dataset there is a poldict dataset with column descriptions.

Codebooks and other materials can be found here:
http://www.oecd.org/site/piaac/publicdataandanalysis.htm
}
\references{
  http://www.oecd.org/site/piaac/publicdataandanalysis.htm
}
\author{
 Dataset created by OECD, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{PIAAC}}}
\examples{
library(PIAAC)

head(pol)
head(poldict)
}
\keyword{datasets}
