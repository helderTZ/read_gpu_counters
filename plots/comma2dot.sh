#! /bin/bash

sed -i 's/,/\./g' *.csv

# create *_dp_* files
#mmv -c '*_sp_*' '#1_dp_#2'
