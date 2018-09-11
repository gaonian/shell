#!/bin/sh

#pgrep -l Google

for temp in `pgrep -l Google`
do
  echo $temp
  break
done 
