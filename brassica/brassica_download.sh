#!/bin/bash

echo "Downloading genome and annotation files..."
mkdir -p genomes
cd genomes

wget -i ../brassica_genomes_urls.txt
for file in *.gz; do
        gunzip "$file"
done

cd ..
mkdir -p annotations
cd annotations

wget -i ../brassica_annotations_urls.txt
for file in *.gz; do
        gunzip "$file"
done
cd ..
