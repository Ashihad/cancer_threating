#!/bin/bash


for x in $(seq 0 9); do
  for y in $(seq 0 9); do
    for z in $(seq 0 9); do
      echo
      echo searching for voxel $x $y $z
      grep "^1,0,0,$x,$y,$z,*" output.csv
      grep "^1,0,0,$x,$y,$z,*" cp-0_d3ddetector_voxel.csv
    done
  done
done