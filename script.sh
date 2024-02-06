#! usr/bin/bash

read -p "Enter the link to the book : " link

echo -e "\n"

wget $link -O - | grep -oE "[[:alpha:]]+" | grep -ivwFf stopwords.txt | sort | uniq -c | sort -rn | head -10
