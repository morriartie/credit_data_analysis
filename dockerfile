FROM python:3
#FROM ubuntu:latest
FROM jupyter/base-notebook

COPY credit_data.ipynb .
COPY MiBolsillo.csv .


RUN rmdir work
RUN pip3 install tqdm
#RUN pip3 install auto-sklearn
RUN pip3 install chardet
RUN pip3 install matplotlib
RUN pip3 install pandas
RUN pip3 install seaborn
RUN pip3 install sklearn

EXPOSE 8888
CMD ["jupyter", "notebook", "--NotebookApp.token=''"]