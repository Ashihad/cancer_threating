#!/bin/bash

echo cell: 1,0,0
for x in $(seq 0 9); do
  for y in $(seq 0 9); do
    for z in $(seq 0 9); do
      echo
      echo searching for voxel $x $y $z
      echo gen `grep -v '^-1,-1,-1,*' output.csv | grep "^1,0,0,$x,$y,$z,*" | cut -d ',' -f '-9,11-'`
      echo src `grep "^1,0,0,$x,$y,$z,*" new/prostate_imrt_beam0_cp74_d3ddetector_voxel.csv`
    done
  done
done