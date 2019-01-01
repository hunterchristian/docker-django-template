FROM python:3.4-alpine

COPY . /app
WORKDIR /app

# Need to install dependencies before we switch into the project directory
# requirements.txt will not be available once we switch to the project directory
# (requirements.txt exists one level higher)
RUN pip install -r requirements.txt 

WORKDIR helloworld

EXPOSE 8000

CMD ["gunicorn", "helloworld.wsgi", "--bind", "0.0.0.0:8000", "--workers", "3"]