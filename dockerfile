FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip build-essential
COPY ./web /web
WORKDIR /web
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
