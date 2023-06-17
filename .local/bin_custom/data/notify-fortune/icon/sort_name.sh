#!/bin/bash

Index=0
for j in *.png; do
  Index=$(($Index + 1))
  if [ -f ./"$Index.png" ]; then
    echo ""
  else
    mv -- "$j" ./"$Index.png"
  fi
done
