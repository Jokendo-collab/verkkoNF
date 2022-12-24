#!/usr/bin/env nextflow

blastdb="proteinBlast"
params.query="file.fasta"

println "I will BLAST $params.query against $blastdb"
