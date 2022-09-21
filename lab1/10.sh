#!/bin/bash

man bash | \
awk -v RS="[[:space:][:punct:]]" '{
for(i=1;i<=NF;i++)
  if(length($1)>=4)
    words[tolower($1)]++;
} END {
  for (w in words)
    print words[w]"\t"w
}' | sort -rn | head -3 | \
cut -f2 # <- Remove word usage count