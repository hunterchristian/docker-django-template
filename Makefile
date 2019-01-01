APP_NAME=mydjangoapp

all: build run

build:
	docker build -t hunterhod/${APP_NAME} .

run:
	docker run -it -p 80:8000 hunterhod/${APP_NAME}

dev:
	cd helloworld && gunicorn helloworld.wsgi

publish:
	docker push hunterhod/${APP_NAME}
