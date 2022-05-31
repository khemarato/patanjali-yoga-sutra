#!/bin/bash

xmlfile="sa_pataJjali-yogasUtra.xml"
while read -u 10 line; do
  if [[ "$line" = "" ]]; then continue; fi
  line="${line#<l>}"
  line="${line%</l>}"
  fd=$(echo "$line" | awk -F "|" -- '{print $3}' | xargs)
  fd=${fd#YS_}
  line=$(echo "$line" | awk -F "|" -- '{print $1}')
  IFS='.' read -ra parts <<< $(echo $fd)
  slug=$(printf "%d.%02d" ${parts[0]} ${parts[1]})
  echo "Writing segment $fd..."
  printf -- '---\nchapter: %d\nverse: %d\nslug: "%s"\ntranslation: ""\nroot_text: "%s"\n---\n\n' ${parts[0]} ${parts[1]} "$slug" "${line% }" >../_aphorisms/$fd.md
done 10<$xmlfile

