#!/bin/bash

echo "Downloading genome and annotation files..."
mkdir -p genomes
cd genomes

wget -i ../genomes_brassica_all.txt
for file in *.gz; do
        gunzip "$file"
done

cd ..
mkdir -p annotations
cd annotations

wget -i ../annotations_brassica_all.txt
for file in *.gz; do
        gunzip "$file"
done
cd ..
