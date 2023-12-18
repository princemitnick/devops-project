#!/usr/bin/env bash


echo "all params $*"
echo "number of params : $#"

for index in $*
do
  if [ -d "$index" ]
  then
    ls -l "$index"
  fi
done