#!/bin/bash

for i in $(seq 1 10); do
  ./mutex > output$i.txt
done
