#!/bin/bash

DOWNLOAD_FOLDER=/home/joshua/Downloads

for item in $(ls $DOWNLOAD_FOLDER);
do
echo "Removing ${item}"
cd $DOWNLOAD_FOLDER
rm -rf $item
done
