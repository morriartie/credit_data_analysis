FROM python:3
FROM jupyter/datascience-notebook

COPY credit_data.ipynb .
COPY MiBolsillo.csv .

RUN pip3 install tqdm
RUN pip3 install boto3

EXPOSE 8888
RUN jupyter notebook