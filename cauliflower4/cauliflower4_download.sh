#!/bin/bash

echo "Downloading genome and annotation files..."
mkdir -p genomes
cd genomes

wget -i ../genomes_cauliflower4.txt
for file in *.gz; do
        gunzip "$file"
done

cd ..
mkdir -p annotations
cd annotations

wget -i ../annotations_cauliflower4.txt
for file in *.gz; do
        gunzip "$file"
done
cd ..
