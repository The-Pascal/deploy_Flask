FROM  python:stretch

COPY . /opt/app
WORKDIR /opt/app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

EXPOSE 80

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
