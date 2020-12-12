#!/bin/bash

gcloud services enable cloudscheduler.googleapis.com

git clone https://github.com/GoogleCloudPlatform/gcf-automated-resource-cleanup.git && cd gcf-automated-resource-cleanup/

export PROJECT_ID=$(gcloud config list --format 'value(core.project)' 2>/dev/null)
WORKDIR=$(pwd)


sudo apt-get install apache2-utils -y

cd $WORKDIR/migrate-storage


export PROJECT_ID=$(gcloud config list --format 'value(core.project)' 2>/dev/null)
gsutil mb -c regional -l us-central1 gs://${PROJECT_ID}-serving-bucket

gsutil acl ch -u allUsers:R gs://${PROJECT_ID}-serving-bucket

gsutil cp $WORKDIR/migrate-storage/testfile.txt  gs://${PROJECT_ID}-serving-bucket

gsutil acl ch -u allUsers:R gs://${PROJECT_ID}-serving-bucket/testfile.txt

curl http://storage.googleapis.com/${PROJECT_ID}-serving-bucket/testfile.txt

gsutil mb -c regional -l us-central1 gs://${PROJECT_ID}-idle-bucket

#monitoring load

ab -n 10000 http://storage.googleapis.com/$PROJECT_ID-serving-bucket/testfile.txt

cat $WORKDIR/migrate-storage/main.py | grep "migrate_storage(" -A 15

gcloud functions deploy migrate_storage --trigger-http --runtime=python37

export FUNCTION_URL=$(gcloud functions describe migrate_storage --format=json | jq -r '.httpsTrigger.url')

export IDLE_BUCKET_NAME=$PROJECT_ID-idle-bucket

envsubst < $WORKDIR/migrate-storage/incident.json | curl -X POST -H "Content-Type: application/json" $FUNCTION_URL -d @-

gsutil defstorageclass get gs://$PROJECT_ID-idle-bucket

gcloud services enable cloudscheduler.googleapis.com


