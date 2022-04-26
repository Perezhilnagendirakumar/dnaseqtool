# dnaseqtool
A package to analyze nucleotide sequence, especially DNA sequence containing Adenine “A”, Thymine “T”, Guanine “G” and Cytosine “C” basepairs retrieved from database like NCBI using accession id to get some meaningful insights of the sequence.

****Features****

It has multiple R scripts containing four functions:

1.***Retrival.txt***:

This file is present in the data folder have the code to retrieve dengue virus dataset from NCBI database using accession id with the help of rentrez package. 
Four types of Dengue virus: DEN-1, DEN-2, DEN-3, and DEN-4.
The NCBI accessions for the DNA sequences of the DEN-1, DEN-2, DEN-3, and DEN-4 Dengue viruses are 1.NC_001477 2.NC_001474 3.NC_001475 4.NC_002640


2.***cdna.R***: 

cdna function generates complementary DNA for the input fasta file by replacing Adenine “A” with Thymine”T”and Guanine “G” with Cytosine “C” and vice versa.

3.***AT.R***: 

AT function calculates the percentage of Adenine and Thymine nucleotide basepair composition in the input fasta file .
  
4.***GC.R***: 
  
GC function calculates the percentage of Guanine and Cytosine nucleotide basepair composition in the input fasta file .

5.***slidingplot. R***: 

sliding plot function gives a graphical/visual representation of nucleotides basepair for the input sequence.
