#!/bin/bash

bq mk ecommerce

cat q1.sql | bq query --use_legacy_sql=false  

cat q2.sql | bq query --use_legacy_sql=false

cat q3.sql | bq query --use_legacy_sql=false

cat q4.sql | bq query --use_legacy_sql=false

cat q5.sql | bq query --use_legacy_sql=false

