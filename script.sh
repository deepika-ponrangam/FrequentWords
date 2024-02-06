#! usr/bin/bash

read -sp "Enter the link to the book : " link

echo -e "\nYour link is $link\n"

wget $link -O - | tr '[:punct:]' ' ' | tr 'A-Z' 'a-z' | tr -s ' ' | tr ' ' '\n' | sort | uniq -c | sort -rn | head -10
