# docker-django-template
Boilerplate for a Django app that utilizes a Docker container, with web serving performed by Gunicorn to handle production-level traffic.

## Quick start
See the file named `Makefile` for detailed commands.

At the top of `Makefile`, change `APP_NAME` to the name of your new app.

### Build and run the docker container locally
In a terminal, navigate to the root directory of the project and execute the following command: 
```
make
```

In a web browser, navigate to `http://0.0.0.0`. If you have not yet made any changes, you should see a page render with some sample text. Modify `src/view.py:index` to render something else onto the page.

### Run the Django app locally, without a docker container (not recommended, but useful for debugging purposes)
In a terminal, navigate to the root directory of the project and execute the following commands: 
```
pip install -r requirements.txt
```
```
make dev
```

This will start up the gunicorn server.

In a web browser, navigate to `http://0.0.0.0:8000`. If you have not yet made any changes, you should see a page render with the text "Hello, ya filthy animals!". Modify `src/view.py:index` to render something else onto the page.

### Publish the docker image to the public repository
You'll need to do this after you have made changes to the project, and want to make those changes available to consumers of your docker image. An example of a consumer of your docker image would be an EC2 instance that hosts your app via docker.

In a terminal, navigate to the root directory of the project and execute the following command: 
```
make publish
```
