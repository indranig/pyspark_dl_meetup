#!/bin/bash

NOTEBOOKPATH="/Users/marc/Documents/meetups/practical-learnings/session3/notebook"
DATASETPATH="/Users/marc/Documents/meetups/practical-learnings/session3/data-sets"
EXTRAPATH="/Users/marc/Documents/meetups/tmpnotebooks"

docker run -it -p 8080:8080 -p 4040:4040 -p 6006:6006 -v $EXTRAPTH:/home -v $NOTEBOOKPATH:/zeppelin-0.7.1-bin-all/notebook -v $DATASETPATH:/data-sets --rm $1
#docker run -it -p 8080:8080 -p 4040:4040 -p 6006:6006 -v $NOTEBOOKPATH:/zeppelin-0.7.1-bin-all/notebook -v $DATASETPATH:/data-sets --rm $1

