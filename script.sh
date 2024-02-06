#! usr/bin/bash

read -p "Enter the link to the book : " link

echo -e "\n"

wget $link -O - | tr '[:punct:]' ' ' | tr 'A-Z' 'a-z' | tr ' ' '\n' | grep -vwFf stopwords.txt | sort | uniq -c | sort -rn | head -10
