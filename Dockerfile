FROM python:3.7-buster

LABEL maintainer="lanpn <phan.ngoclan58@gmail.com>"

RUN pip install mlflow gevent

ENV MLF_BACKEND_STORE ""
ENV MLF_ARTIFACT_STORE ""
CMD mlflow server\
    --backend-store-uri ${MLF_BACKEND_STORE}\
    --default-artifact-root ${MLF_ARTIFACT_STORE}\
    --gunicorn-opts "-k gevent"\
    --host 0.0.0.0
