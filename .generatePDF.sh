#!/bin/bash

echo "Creating folder reports"
mkdir reports/

echo "Generating PDFs"

for file in *.tex
do
    echo "File: $file"
    folder="reports/"${file::-4}

    echo "Creating folder: $folder"
    mkdir $folder
    mv $file $folder

    cd $folder

    echo "Generating .pdf from .tex file: $file"
    latexmk -pdf $file

    cd ../../

    echo "Done!"
done
