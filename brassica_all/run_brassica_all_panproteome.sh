#!/bin/bash

#List Data
#*.faa makes sure that the path to the logs dir will not be included
#protein sequence files need to end in .faa
realpath QC/proteins/*.faa > proteins.txt

#Build panproteome
pantools -Xmx200g -Xms200g build_panproteome panproteome/proteome_DB proteins.txt

#Run Busco to estimate optimal grouping
pantools busco_protein --odb10=brassicales_odb10 panproteome/proteome_DB/
