bq mk -d --data_location=US ecommerce
bq query --use_legacy_sql=false  'SELECT
  productSKU,
  COUNT(DISTINCT v2ProductName) AS product_count,
  STRING_AGG(DISTINCT v2ProductName LIMIT 5) AS product_name
FROM `data-to-insights.ecommerce.all_sessions_raw`
  WHERE v2ProductName IS NOT NULL
  GROUP BY productSKU
  HAVING product_count > 1
  ORDER BY product_count DESC'
bq query --use_legacy_sql=false 'SELECT DISTINCT
  v2ProductName,
  productSKU
FROM `data-to-insights.ecommerce.all_sessions_raw`
WHERE productSKU = 'GGOEGPJC019099''
bq query --use_legacy_sql=false 'SELECT DISTINCT
  v2ProductName,
  productSKU
FROM `data-to-insights.ecommerce.all_sessions_raw`
WHERE productSKU = 'GGOEGPJC019099''
SELECT
FROM `data-to-insights.ecommerce.all_sessions_raw`
WHERE productSKU = 'GGOEGAAX0098'
bq query --use_legacy_sql=false 'SELECT
  productSKU,
  ARRAY_AGG(DISTINCT v2ProductName) AS push_all_names_into_array
FROM `data-to-insights.ecommerce.all_sessions_raw`
WHERE productSKU = 'GGOEGAAX0098'
GROUP BY productSKU'
export PROJECT_ID=qwiklabs-gcp-01-6da9c88cc005
bq query --use_legacy_sql=false 'SELECT
  productSKU,
  ARRAY_AGG(DISTINCT v2ProductName) AS push_all_names_into_array
FROM `data-to-insights.ecommerce.all_sessions_raw`
WHERE productSKU = 'GGOEGAAX0098'
GROUP BY productSKU'
bq query --use_legacy_sql=false 
bq query --use_legacy_sql=false 'SELECT
  SKU,
  name,
  stockLevel
FROM `data-to-insights.ecommerce.products`
WHERE SKU = 'GGOEGPJC019099''
bq query --use_legacy_sql=false 'SELECT
  SKU,
  name,
  stockLevel
FROM `data-to-insights.ecommerce.products`
WHERE SKU = \'GGOEGPJC019099\''
'
bq query --use_legacy_sql=false 'SELECT
  SKU,
  name,
  stockLevel
FROM `data-to-insights.ecommerce.products`
WHERE SKU = \'GGOEGPJC019099\''

bq query --use_legacy_sql=false "SELECT
  SKU,
  name,
  stockLevel
FROM `data-to-insights.ecommerce.products`
WHERE SKU = 'GGOEGPJC019099'"
bq query --use_legacy_sql=false '
WITH inventory_per_sku AS (
  SELECT DISTINCT
    website.v2ProductName,
    website.productSKU,
    inventory.stockLevel
  FROM `data-to-insights.ecommerce.all_sessions_raw` AS website
  JOIN `data-to-insights.ecommerce.products` AS inventory
    ON website.productSKU = inventory.SKU
    WHERE productSKU = 'GGOEGPJC019099'
)

SELECT
  productSKU,
  SUM(stockLevel) AS total_inventory
FROM inventory_per_sku
GROUP BY productSKU
'
SELECT DISTINCT
FROM `data-to-insights.ecommerce.all_sessions_raw`
bq query --use_legacy_sql=false ''
bq query --use_legacy_sql=false '
SELECT DISTINCT
  v2ProductName,
  productSKU
FROM `data-to-insights.ecommerce.all_sessions_raw`
WHERE productSKU = 'GGOEGPJC019099'
'
bq query  --use_legacy_sql=false "WITH inventory_per_sku AS (SELECT DISTINCT website.v2ProductName, website.productSKU, inventory.stockLevel FROM \`data-to-insights.ecommerce.all_sessions_raw\` AS website JOIN \`data-to-insights.ecommerce.products\` AS inventory ON website.productSKU = inventory.SKU WHERE productSKU = 'GGOEGPJC019099') SELECT productSKU, SUM(stockLevel) AS total_inventory FROM inventory_per_skuG ROUP BY productSKU"
bq query "WITH inventory_per_sku AS (SELECT DISTINCT website.v2ProductName, website.productSKU, inventory.stockLevel FROM \`data-to-insights.ecommerce.all_sessions_raw\` AS website JOIN \`data-to-insights.ecommerce.products\` AS inventory ON website.productSKU = inventory.SKU WHERE productSKU = 'GGOEGPJC019099') SELECT productSKU, SUM(stockLevel) AS total_inventory FROM inventory_per_skuG ROUP BY productSKU"
bq query --use_legacy_sql=false 
bq query --use_legacy_sql=false ' #standardSQL
CREATE OR REPLACE TABLE ecommerce.site_wide_promotion AS
SELECT .05 AS discount;'
bq query --use_legacy_sql=false '#standardSQL
SELECT DISTINCT
productSKU,
v2ProductCategory,
discount
FROM `data-to-insights.ecommerce.all_sessions_raw` AS website
CROSS JOIN ecommerce.site_wide_promotion
WHERE v2ProductCategory LIKE '%Clearance%'
AND productSKU = 'GGOEGOLC013299''
bq query --use_legacy_sql=false '#standardSQL
SELECT DISTINCT
productSKU,
v2ProductCategory,
discount
FROM `data-to-insights.ecommerce.all_sessions_raw` AS website
CROSS JOIN ecommerce.site_wide_promotion
WHERE v2ProductCategory LIKE '%Clearance%'
AND productSKU = GGOEGOLC013299'
bq query --use_legacy_sql=false '#standardSQL
SELECT DISTINCT
productSKU,
v2ProductCategory,
discount
FROM `data-to-insights.ecommerce.all_sessions_raw` AS website
CROSS JOIN ecommerce.site_wide_promotion
WHERE v2ProductCategory LIKE '\%Clarance\%'
AND productSKU = GGOEGOLC013299'
bq query --use_legacy_sql=false '
SELECT DISTINCT
productSKU,
v2ProductCategory,
discount
FROM `data-to-insights.ecommerce.all_sessions_raw` AS website
CROSS JOIN ecommerce.site_wide_promotion
WHERE v2ProductCategory LIKE '%Clearance%''
bq query --use_legacy_sql=false '
SELECT DISTINCT
productSKU,
v2ProductCategory,
discount
FROM `data-to-insights.ecommerce.all_sessions_raw` AS website
CROSS JOIN ecommerce.site_wide_promotion
WHERE v2ProductCategory LIKE '%Clearance%'"



gcloud config list project
vim bqml.sh
chmod +x bqml.sh 
ls
./bqml.sh 
vim bqml.sh 
cat bqml.sh 
ls
gcloud auth student-00-9c7f2f2da73d@qwiklabs.net
gcloud auth login student-00-9c7f2f2da73d@qwiklabs.net
gcloud config set project qwiklabs-gcp-00-641da3b471cd
./bqml.sh 
gcloud auth revoke
nano vm.yaml
cat vm.yaml 
nano vm.yaml
ls
cat bqml.sh 
bq shell
ls
nano sqlerror.sh
nano ps1.sql
nano sqlerror.sh
ls
chmod +x sqlerror.sh 
./sqlerror.sh 
nano sqlerror.sh
ls
cat ps1.sql 
nano ps1.sql 
nano ps2.sql
nano ps3.sql
nano ps4.sql
nano ps5.sql
ls
cat sqlerror.sh 
cat ps1.sql 
cat ps2.sql 
cat ps3.sql 
cat ps4.sql 
cat ps5.sql 
ls
pwd
gcloud auth login student-03-ccfd6e31eda1@qwiklabs.net
gcloud config set project qwiklabs-gcp-03-96cb85f682d5
./sqlerror.sh 
nano ps0.sql
ls
vim sqlerror.sh 
ls
cat ps0.sql 
cat sqlerror.sh 
./sqlerror.sh 
nano sqlerror.sh 
./sqlerror.sh 
ls
nano ps00.sql
nano sqlerror.sh 
./sqlerror.sh 
gcloud auth revoke
gcloud auth login student-00-0c2eae882cc2@qwiklabs.net
gcloud config set project qwiklabs-gcp-00-03e9bff410e7
./sqlerror.sh 
gcloud auth revoke
nano etlp.sh
fg
nano etlp.sh
vim etlp.sh
mkdir siva
cd siva 
cat > siva
cd ..
vim test_cd.sh
chmod +x test_cd.sh
ls
./test_cd.sh
vim test_cd.sh
./test_cd.sh
ls
mv etlp.sh etlp1.sh
nano etlp2.sh
vim etlp2.sh
chmod +x etlp2.sh
ls
chmod +x etlp1.sh
ls
gcloud auth login student-01-5012441aa032@qwiklabs.net
gcloud confg set project qwiklabs-gcp-01-cd1623c11d02
gcloud config set project qwiklabs-gcp-01-cd1623c11d02
ls
./etlp1.sh 
vim etlp1.sh 
./etlp1.sh 
ls
cd dataflow-python-examples/
ls
nano etlp1.sh
cd ..
nano etlp1.sh
vim  etlp1.sh
cat etlp1.sh 
ls
cd dataflow-python-examples/
ls
cd dataflow_python_examples/
ls
vim  etlp1.sh
cd ...
cd ..
ls
vim etlp1.sh 
ls
rm -f dataflow-python-examples/
rm -rf dataflow-python-examples/
rm -f dataflow-python-examples/
ls
vim etlp1.sh 
gsutil -m cp -R gs://spls/gsp290/dataflow-python-examples .
ls
cd dataflow-python-examples/
ls
cd dataflow_python_examples/
ls
cd ..
ls
vim etlp1.sh 
./etlp1.sh 
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
cd dataflow-python-examples/
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
nano test1.sh
chmod +x test1.sh 
./test1.sh 
vim test1.sh 
./test1.sh 
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
echo $PROJECT
echo $PROJECT=qwiklabs-gcp-01-cd1623c11d02
export PROJECT=qwiklabs-gcp-01-cd1623c11d02
echo $PROJECT
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
ansible auth revoke
gcloud auth revoke
ls
clear
ls
cd ..
ls
rm -rf dataflow-python-examples/
ls
cat etlp2.sh 
cat etlp1.sh 
gcloud auth login
gcloud auth login student-01-08fba480fc77@qwiklabs.net
ls
./etlp1.sh 
vim etlp1.sh 
./etlp1.sh 
ls
rm -rf dataflow-python-examples/
ls
pwd
sed
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
gsutil -m cp -R gs://spls/gsp290/dataflow-python-examples .~
gsutil -m cp -R gs://spls/gsp290/dataflow-python-examples .
cd dataflow-python-examples/
ls
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
ls
gcloud auth list
gcloud auth login
gcloud config set project qwiklabs-gcp-01-9cfc98239cf7
./etlp1.sh 
vim etlp1.sh 
./etlp1.sh 
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
cd dataflow-python-examples/
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
pip install apache-beam[gcp]==2.24.0
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
ls
cd dataflow_python_examples/
ls
echo $PROJECT
export PROJECT=qwiklabs-gcp-01-9cfc98239cf7
echo $PROJECT
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
cd ..
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
gcloud auth list
ls
python3 dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
sudo pip install virtualenv 
virtualenv -p python3 venv
source venv/bin/activate
pip install apache-beam[gcp]==2.24.0
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
cd ..
ls
cat etlp1.sh 
vim etlp1.sh 
ls
cd dataflow-python-examples/
ls
cd venv/
ls
cd bin
ls
source venv/bin/activate
source activate
pip install apache-beam[gcp]==2.24.0
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
cd ..
cd //
cd
cd dataflow-python-examples/
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
gcloud auth list
gcloud auth login 
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
pip3 install apache-beam[gcp]==2.24.0
python dataflow_python_examples/data_ingestion.py --project=$PROJECT --region=us-central1 --runner=DataflowRunner --staging_location=gs://$PROJECT/test --temp_location gs://$PROJECT/test --input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session
ls
vim ./etlp1.sh 
rm -rf dataflow-python-examples/
ls
gcloud auth login student-00-a704552776b8@qwiklabs.net
gcloud config set project qwiklabs-gcp-00-ab58fa1c92df
./etlp1.sh 
ls
nano inrosql.sh
chmod +x inrosql.sh 
ls
mv inrosql.sh introsql.sh
ls
gcloud auth login student-02-f2f3f5bf31a4@qwiklabs.net
gcloud config set project qwiklabs-gcp-02-f9fb68f72906
./introsql.sh 
ls
./introsql.sh 
chmod +x introsql.sh 
./introsql.sh 
cat introsql.sh 
vim introsql.sh 
./introsql.sh 
vim introsql.sh 
./introsql.sh 
gcloud sql connect  siva-instance  --user=root
gcloud auth revike
gcloud auth revoke
ls
cat vm.yaml 
gcloud auth login 
ls
nano q1.sql
nano q2.sql
nano q3.sql
nano q4.sql
nano q5.sql
cat sqlerror.sh 
cat ps00
cat ps00.sql 
cat ps0.sql 
nano q5.sql 
nano q4.sql 
nano q3.sql 
cat q3.sql 
cat q4`
cat q4.sql 
cat q2.sql 
cat q1.sql 
cat sqlerror.sh 
nano sqltrouble.sh
ls
chmod +x sqltrouble.sh 
ls
vim sqltrouble.sh 
gcloud auth login student-01-3f74ed4a0d34@qwiklabs.net
gcloud config set project qwiklabs-gcp-01-1eb9680fb62c
ls
./sqltrouble.sh 
vim sqltrouble.sh 
cat sqlerror.sh 
vim sqltrouble.sh 
./sqltrouble.sh 
ls
gcloud aurh revoke
gcloud auth revoke
gcloud auth list
gcloud list project
gcloud projects list
gcloud auth login 
gcloud config set project qwiklabs-gcp-01-d4f52267c404
./sqltrouble.sh 
ls
cat introsql.sh 
vim introsql.sh 
ls
vim introsql.sh 
gcloud auth login
gcloud config set project qwiklabs-gcp-03-a77bada171bb
./introsql.sh 
gcloud sql connect  qwiklabs-demo --user=root
gcloud sql connect  bharath-instance --user=root
jobd
jobs
fg
gcloud sql connect  bharath-instance --user=root
gcloud auth revoke
gcloud autj list
gcloud auth list
vim optimizegcs.sh
gcloud monitoring
gcloud monitoring --help
gcloud monitoring --configuration
gcloud monitoring dashboards --help
gcloud monitoring create dashboards --help
gcloud monitoring dashboards create --help
vim optimizegcs.sh
ls
gcloud monitoring dashboards create --help
ls
vim dashboard.json
cat dashboard.json 
gcloud auth login
gcloud config set project qwiklabs-gcp-03-6bc0e8e99dd3
ls
gcloud monitoring dashboards create --help
gcloud monitoring dashboards create --config-from-file=dashboard.json
vim dashboard.json 
ls
chmod +x optimizegcs.sh 
./optimizegcs.sh 
ls
cat optimizegcs.sh 
vim optimizegcs.sh 
ls
vim optimizegcs.sh 
gcloud auth login 
gclod help
gclod --help
gcloud --help
gcloud identity --help
gcloud quota
gcloud help -- bigquery quota
gcloud auth application-default set-quota-project --help
gcloud iam --help
bq
bq  --help
bq.py  --help
bq  --help
bq  -- quota
bq help -- quota
bq help
bq help | grep quota
gsutil help
ls
vim bqlquota.sh
cat introsql.sh 
cat sqltrouble.sh 
vim bqlquota.sh 
ls
cat  bqlquota.sh 
vim bqq.sql
vim bqq1.sql
ls
nano bqlquota.sh 
ls
vim bqlquota.sh 
ls
nano bqlquota.sh 
vim bqlquota.sh 
chmod +x bqlquota.sh 
./bqlquota.sh 
ls
vim bqlquota.sh 
./bqlquota.sh 
vim bqlquota.sh 
./bqlquota.sh 
pwd
ls
git init
git remote add origin https://github.com/kethavathsivanaik/work_play_qwiklabs.git
git branch -M main
git push -u origin main
git remote -v
git add .
git remote -v
git branch -M main
git push -u origin main
git pull  https://github.com/kethavathsivanaik/work_play_qwiklabs.git
ls
git add .
git commit -m "QwikLabs"
git push -u origin main
git push -u origin master
git config --global user.email  kethavathsivanaik
git config --global user.emai sivanaikk0903@gmail.com
git config --global user.name kethavathsivanaik
git init
