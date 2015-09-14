#!/bin/sh
DIR=$( cd -P `dirname "$0"` && pwd )
docker run --rm -it -v $DIR:/source xabufr/pandoc-latex-make-docker /bin/sh -c "make && make clean && chmod 777 *.pdf"
