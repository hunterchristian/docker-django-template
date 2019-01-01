APP_NAME=helloworld

all: build run

build:
	docker build -t hunterhod/${APP_NAME} .

run:
	docker run -it -p 80:8000 hunterhod/${APP_NAME}

dev:
	gunicorn src.wsgi --bind 0.0.0.0:8000 --workers 3

publish:
	docker push hunterhod/${APP_NAME}


create-env:
	python3 -m venv env && pip3 install -r requirements.txt

activate-env:
	@echo "Run this to activate the virtual environment: source env/bin/activate"
