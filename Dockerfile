FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN python -m venv /env
RUN /env/bin/pip install --upgrade pip

CMD /env/bin/python main.py
