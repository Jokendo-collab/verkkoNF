#!/usr/bin/env nextflow

println "\nmy assembly is $params.assembly\n"

makeblastdb -in $params.assembly -dbtype 'nucl' -out $params.databaseName

mkdir DB
mv blastDB.n* DB
