#!/bin/bash

gsutil mb gs://qwiklabs-gcp-04-55a4b5b3e81
gsutil cp start_station_data.csv gs://qwiklabs-gcp-04-55a4b5b3e81
gsutil cp end_station_data.csv gs://qwiklabs-gcp-04-55a4b5b3e81
gcloud sql instances create bharath-instance  --database-version=MYSQL_5_7 --tier=db-n1-standard-1  --region=us-central1 --root-password=password123


gcloud sql connect  bharath-instance  --user=root


CREATE DATABASE bike;

