#!/bin/bash

for i in $(seq 1 10); do
  ./condition_variable > output$i.txt
done
