#!/bin/bash
mkdir -p data
cd data/
split -l 15000 ../unpaywall_snapshot_2018-06-21T164548_with_versions.jsonl
cd ..
