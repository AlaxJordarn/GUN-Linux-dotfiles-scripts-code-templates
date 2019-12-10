echo -e ".xml\n.pdf" | dmenu -i -p  "chuse the screen resulation :"  | xargs locate  $@  | dmenu -l 30 | xargs -I {} epdfview "{}"
