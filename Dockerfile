FROM python:3-alpine

# here is info about the base image
# https://hub.docker.com/_/python:wq

WORKDIR /app

COPY ./* .

# to get /bin/bash uncomment below line
RUN apk update && apk add bash

RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python3"]

# Default python file to run
CMD ["transactions.py"]
