#!/bin/bash

for i in $(seq 1 10); do
  ./join > output$i.txt
done
