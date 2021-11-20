#!/usr/bin/env bash

cat SraRunTable.txt | cut -f 1| grep -v Run| parallel --jobs 12 fastq-dump 2>download_data_raw.log >> download_data_raw.log
