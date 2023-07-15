# Fishtest Worker Docker Project

This project provides a Dockerized environment for running a Fishtest worker. Fishtest is a distributed computing project that helps contribute to the development and testing of the Stockfish chess engine.

This Dockerfile creates an Alpine Linux based container that clones the Fishtest repository, and runs the Fishtest worker. The worker is configurable via environment variables for the user's username, password, and the number of CPU cores to be used (concurrency).

## Usage:

### Build the Docker Image

```bash
docker build -t my-fishtest .
```

### Run the Docker Container

```bash
docker run -e USERNAME=myusername -e PASSWORD=mypassword -e CONCURRENCY=5 my-fishtest
```

Replace `myusername`, `mypassword` and `5` with your actual username, password and desired concurrency.

## Security Note

Passing sensitive data like usernames and passwords through command line parameters or environment variables can lead to security issues. Consider using more secure ways of providing these details, such as Docker secrets, if you're deploying this in a production environment.

## Contributing

We welcome contributions to improve this Dockerfile. Please feel free to open an issue or submit a pull request on GitHub.
