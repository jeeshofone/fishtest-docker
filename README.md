# Fishtest Worker Docker Project

This project provides a Dockerized environment for running a Fishtest worker. Fishtest is a distributed computing project that helps contribute to the development and testing of the Stockfish chess engine.

This Dockerfile creates an Alpine Linux based container that clones the Fishtest repository, and runs the Fishtest worker. The worker is configurable via environment variables for the user's username, password, and the number of CPU cores to be used (concurrency).

## Usage:

### Build the Docker Image

```bash
docker build -t my-fishtest .
```

### Run the Docker Container with Docker Command

```bash
docker run -e USERNAME=myusername -e PASSWORD=mypassword -e CONCURRENCY=5 my-fishtest
```

Replace `myusername`, `mypassword` and `5` with your actual username, password and desired concurrency.

### Run the Docker Container with Docker Compose

You can also use Docker Compose to run the Docker container. Here's a sample `docker-compose.yml`:

```yaml
version: '3.8'
services:
  fishtest:
    image: my-fishtest
    environment:
      USERNAME: myusername
      PASSWORD: mypassword
      CONCURRENCY: 5
```

Run your Docker container with Docker Compose using the following command:

```bash
docker-compose up
```

Replace `myusername`, `mypassword` and `5` with your actual username, password, and the desired number of CPU cores to be used.

## Security Note

Passing sensitive data like usernames and passwords through command line parameters or environment variables can lead to security issues. Consider using more secure ways of providing these details, such as Docker secrets, if you're deploying this in a production environment.

## Contributing

We welcome contributions to improve this Dockerfile. Please feel free to open an issue or submit a pull request on GitHub.
