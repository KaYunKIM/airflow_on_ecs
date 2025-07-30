export AIRFLOW_HOME=/opt/airflow
aws configure set region ap-northeast-2

service cron start
/bin/bash /opt/$1.sh $2