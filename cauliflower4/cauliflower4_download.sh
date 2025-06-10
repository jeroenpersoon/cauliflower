#!/bin/bash

echo "Downloading genome and annotation files..."
mkdir -p genomes_new
cd genomes_new

wget -i ../genomes_cauliflower4.txt
for file in *.gz; do
        gunzip "$file"
done

cd ..
mkdir -p annotations_new
cd annotations_new

wget -i ../annotations_cauliflower4.txt
for file in *.gz; do
        gunzip "$file"
done
cd ..
