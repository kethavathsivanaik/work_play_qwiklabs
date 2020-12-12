#!/bin/bash


gsutil -m cp -R gs://spls/gsp290/dataflow-python-examples .

export PROJECT=qwiklabs-gcp-00-ab58fa1c92df
gcloud config set project $PROJECT

gsutil mb -c regional -l us-central1 gs://$PROJECT

gsutil cp gs://spls/gsp290/data_files/usa_names.csv gs://$PROJECT/data_files/
gsutil cp gs://spls/gsp290/data_files/head_usa_names.csv gs://$PROJECT/data_files/

bq mk lake

cd dataflow-python-examples/
# Here we set up the python environment.
# Pip is a tool, similar to maven in the java world
sudo pip install virtualenv

#Dataflow requires python 3.7
virtualenv -p python3 venv

source venv/bin/activate
pip install apache-beam[gcp]==2.24.0


python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session

python dataflow_python_examples/data_transformation.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session












