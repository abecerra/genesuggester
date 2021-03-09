#!/bin/sh

# Without arguments, should select default values:
curl http://localhost:5000/gene_suggest

# With arguments:
curl "http://localhost:5000/gene_suggest?query=BR&species=homo_sapiens&limit=20"

# With argument limit bad formed, it should select default limit:
curl "http://localhost:5000/gene_suggest?query=BR&species=homo_sapiens&limit=aa"




