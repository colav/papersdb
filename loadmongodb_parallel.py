#!/usr/bin/env python3
from joblib import Parallel, delayed
from os import listdir
from os import system

DB="gfif"
COLECCTION="papers"
DATA="data/"
NJOBS=8

def callImport(filepath):
	system("echo 'mongoimport --db %s --collection %s < %s'"%(DB,COLECCTION,DATA+'/'+filepath))
	system("mongoimport --db %s --collection %s < %s"%(DB,COLECCTION,DATA+'/'+filepath))

Parallel(n_jobs=NJOBS)(delayed(callImport)(i) for i in listdir(DATA))

#mongoimport --db $DB --collection $COLECCTION < $FILE
