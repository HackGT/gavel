FROM python:stretch

ADD . /src

WORKDIR /src
RUN pip install -r requirements.txt

EXPOSE 5000
CMD python initialize.py && gunicorn gavel:app
