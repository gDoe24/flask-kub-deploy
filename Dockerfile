FROM python:stretch

COPY . /app

WORKDIR /app

RUN pip install pip --upgrade
RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8090", "main:APP" ]