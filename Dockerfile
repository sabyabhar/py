FROM python:3.8

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN python3 -m pip install --upgrade pip

RUN pip install -r requirements.txt


CMD ["python", "app.py"]