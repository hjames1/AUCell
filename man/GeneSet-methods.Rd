% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_methods.R
\docType{methods}
\name{nGenes}
\alias{nGenes}
\alias{nGenes,GeneSet-method}
\alias{nGenes,GeneSetCollection-method}
\alias{subsetGeneSets}
\alias{subsetGeneSets,GeneSetCollection-method}
\alias{setGeneSetNames}
\alias{setGeneSetNames,GeneSetCollection-method}
\title{GeneSet methods}
\usage{
nGenes(geneSet)

\S4method{nGenes}{GeneSet}(geneSet)

\S4method{nGenes}{GeneSetCollection}(geneSet)

subsetGeneSets(geneSets, geneNames)

\S4method{subsetGeneSets}{GeneSetCollection}(geneSets, geneNames)

setGeneSetNames(geneSets, newNames)

\S4method{setGeneSetNames}{GeneSetCollection}(geneSets, newNames)
}
\arguments{
\item{geneSet}{One gene-set (\code{\link{GeneSet}})}

\item{geneSets}{Gene-set collection
(\code{\link{GeneSetCollection}})}

\item{geneNames}{Gene names (for subset)}

\item{newNames}{New names (to assign to the gene sets)}
}
\value{
- **nGenes()**: provides the number of genes in the gene-set,
or each of the gene-sets in a collection

- **subsetGeneSets()**: Subsets each of the gene-sets in a collection
to contain only the genes inthe given list. Equivalent to intersect(),
but keeping the original gene-set name.

- **setGeneSetNames()**: Modifies the name of each gene-set in a collection
}
\description{
Functions to manipulate GeneSet and GeneSetCollection objects
(from package GSEABase)
}
\examples{
library(GSEABase)
genes_1 <- GeneSet(paste("Gene", 1:20, sep=""), setName="geneSet1")
genes_2 <- GeneSet(paste("Gene", 18:22, sep=""), setName="geneSet2")
geneSets <- GeneSetCollection(genes_1, genes_2)

nGenes(genes_1)
nGenes(geneSets)

subsetGeneSets(geneSets, paste("Gene", 15:20, sep=""))

geneSets_newNames <- setGeneSetNames(geneSets, c("one", "two"))
names(geneSets_newNames)
}
