AIRFLOW_CFG="/opt/airflow/airflow.cfg"
REDIS_URL=$(grep -oP '^broker_url\s*=\s*\K.+' "$AIRFLOW_CFG")

python -m flower --broker=$REDIS_URL flower