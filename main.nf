#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

println "\nThe verkko De novo assembly requires $params.hifiReads and $params.nanoReads as the input fastq files. The number od threads are $params.threads and at the end the results are written to $params.outdir\n"
