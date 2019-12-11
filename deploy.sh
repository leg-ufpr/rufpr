#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/rufpr
read -p 'PORTA: ' PORT

Rscript -e 'rmarkdown::render("rufpr.Rmd")'
rsync -avz -e "ssh -p $PORT" rufpr.html ${USER}@${HOST}:~/${DIR}/index.html
# rsync -avz -e "ssh -p $PORT" rufpr.pdf ${USER}@${HOST}:~/${DIR}/rufpr.pdf

exit 0
