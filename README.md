# PapersDB
Import http://oadoi.org full data base  (~80GB for the October 2018 snapshot) into MongoDB, and creates [some indices](./indexes.mdb) for fast queries 

WARNING: Only the [serial implementation](./loadmongodb.sh) have been fully tested

## USAGE
* From Python. See the sample notebook: [BasicQueries.ipynb](./notebooks/Basic+Queires.ipynb), which includes the technical info of the imported database
* From Console:
```bash
$ mongo
> use gfif
> db.papers.find().count()
> db.papers.find({"doi" : "10.7705/biomedica.v37i3.4058"})
```
Or as script
```bash
$ mongo < test.node
```

## Upgrade
To load the JSON file into the database, it is recommended that you first delete the existing one in MongoDB to avoid any info duplication:
```bash
$ mongo 
> use gfif
> db.papers.remove()
```
