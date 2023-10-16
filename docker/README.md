*** Docker Commands***

1. Build the Docker image locally:

    `docker build -t intuitive-image .`

2. List docker images:

    ` docker images`

3. Create and Start a Container from the Image:

    `docker run -i -t 43904af786ab /bin/bash`

4. Upload image to DockerHub Registry

    `docker push <PUBLIC REPOSITORY NAME>/<NEW IMAGE NAME>:<VERSION>`