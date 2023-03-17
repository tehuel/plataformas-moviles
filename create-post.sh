#! /bin/bash

CONTENT_DIR="content/clases"
POST_NUMBER=$(ls $CONTENT_DIR | wc -l)
FILENAME=$CONTENT_DIR/$(date +"%Y-%m-%d").md
POST_CONTENT=$(cat <<EOF
---
title: Clase $POST_NUMBER - (tema)
---

(Desarrollar...)

EOF
)

echo "$POST_CONTENT" > $FILENAME
