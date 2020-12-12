#!/bin/bash

export PROJECT_ID=qwiklabs-gcp-02-b1023a3bf21a


cat bqq.sql |  bq query --use_legacy_sql=false

curl -d @data \
  -H "content-type: application/json" \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -X PATCH \
  "https://servicemanagement.googleapis.com/v1/services/bigquery-json.googleapis.com/projectSettings/$PROJECT_ID?updateMask=quotaSettings.consumerOverrides%5B%22QueryUsagePerDay%22%5D"

cat bqq1.sql |  bq query --use_legacy_sql=false
