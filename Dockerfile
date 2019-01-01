FROM python:3.4-alpine

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt 

EXPOSE 8000

CMD ["gunicorn", "src.wsgi", "--bind", "0.0.0.0:8000", "--workers", "3"]