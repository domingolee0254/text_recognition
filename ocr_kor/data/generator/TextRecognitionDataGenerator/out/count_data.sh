#!/bin/bash

ls train/back/  | grep "" -c 
ls train/basic/ | grep "" -c
ls train/blur/  | grep "" -c
ls train/dist/  | grep "" -c
ls train/skew/  | grep "" -c

echo "VAL-----"

ls val/back/  | grep "" -c 
ls val/basic/ | grep "" -c
ls val/blur/  | grep "" -c
ls val/dist/  | grep "" -c
ls val/skew/  | grep "" -c





