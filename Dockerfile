FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /app/test_python
COPY . /app/test_python

RUN python -m venv /env
RUN /env/bin/pip install --upgrade pip

CMD /env/bin/python /app/test_python/main.py