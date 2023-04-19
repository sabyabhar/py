FROM python:3.8

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN python3 -m pip install --upgrade pip


CMD ["python", "app.py"]