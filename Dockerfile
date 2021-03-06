FROM python:3.6-slim

ENV PORT 8080

RUN pip3 install flask
RUN pip3 install Flask gunicorn
RUN pip3 install nltk

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app
