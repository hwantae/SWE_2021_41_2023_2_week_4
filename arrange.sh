#!/bin/bash

for files_arr in *; do
  if [[ -f $files_arr && ! $files_arr == *.sh ]]; then
    first_letter=$(echo "$files_arr" | cut -c1 | tr '[:upper:]' '[:lower:]')
    
    if [[ $first_letter =~ [a-z] ]]; then
      mkdir -p "../$first_letter"
      mv "$files_arr" "../$first_letter/"
    fi
  fi
done