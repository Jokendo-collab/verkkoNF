#!/usr/bin/env nextflow

params.greeting = "Hello world!"
greeting_ch = Channel.of(params.greeting)

process SPLITTLETTERS {
	input:
	val x

	output:
	path 'chunk_*'

	script:
	"""
	printf '$x' | split -b 6 - chunk_ 
	"""
}

process CONVERTTOUPPER {

	input:
	path y

	output:
	stdout

	script:
	"""
	cat $y | tr '[a-z]' '[A-Z]'
	"""
}

workflow{
    letters_ch = SPLITTLETTERS(greeting_ch)
    result_ch = CONVERTTOUPPER (letters_ch.flatten())
    result_ch.view { it }
}




