#!/bin/bash
DB="gfif"
COLECCTION="papers"
FILE="unpaywall_snapshot_2018-06-21T164548_with_versions.jsonl"
echo "mongoimport --db $DB --collection $COLECCTION < $FILE"
mongoimport -j 16  --db $DB --collection $COLECCTION < $FILE
