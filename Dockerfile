FROM python:alpine

LABEL maintainer="Ahmet Erkoc<aerkoc01@gmail.com>"

RUN pip install flask

VOLUME /src

EXPOSE 5000

ENTRYPOINT ["python", "/src/app.py"]
