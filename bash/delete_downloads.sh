#!/bin/bash

DOWNLOAD_FOLDER=$HOME/Downloads

for item in $(ls $DOWNLOAD_FOLDER); do
  cd $DOWNLOAD_FOLDER
  rm -rvf $item
done
