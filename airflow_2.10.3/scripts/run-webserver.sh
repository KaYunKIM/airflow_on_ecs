airflow db migrate

airflow users create -u admin -p admin -f admin -l admin -r Admin -e account@gmail.com

airflow connections add 's3_conn' \
   --conn-type 's3' \
   --conn-extra '{"region": "ap-northeast-2"}' \

airflow webserver