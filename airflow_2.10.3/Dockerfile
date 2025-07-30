FROM apache/airflow:2.10.3-python3.11

USER root
COPY crontab.sh /opt/
RUN apt-get update && apt-get install git cron iputils-ping -y
RUN crontab -u airflow /opt/crontab.sh && chmod u+s /usr/sbin/cron

USER airflow
COPY scripts/. /opt/
COPY airflow.cfg /opt/airflow/

RUN git clone https://github.com/airflow_dags.git
RUN git clone https://github.com/airflow_scripts.git

RUN pip3 install -r /opt/requirements.txt

ENTRYPOINT ["/bin/bash", "/opt/commands.sh"]
