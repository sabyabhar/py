FROM python:3.8-alpine

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN python3 -m pip install --upgrade pip

RUN pip install -r requirements.txt

RUN python3 -m spacy download en_core_web_sm


CMD ["python", "app.py"]