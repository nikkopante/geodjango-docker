# syntax=docker/dockerfile:1
FROM python:3
RUN apt-get update
RUN apt-get install -y libgdal-dev gdal-bin
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/