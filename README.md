# verkkoNF
Verkko is a hybrid genome assembly pipeline developed for telomere-to-telomere assembly of PacBio HiFi and Oxford Nanopore reads. Verkko is Finnish for net, mesh and graph.

Verkko uses Canu to correct remaining errors in the HiFi reads, builds a multiplex de Bruijn graph using MBG, aligns the Oxford Nanopore reads to the graph using GraphAligner, progressively resolves loops and tangles first with the HiFi reads then with the aligned Oxford Nanopore reads, and finally creates contig consensus sequences using Canu's consensus module.

Note: Verkko is a work in progress and currently available as a beta release. Expect to encounter instability, but please feel free to submit an issue if you encounter any problems.

