# jenkins-docker
Jenkins installation using a Docker container. In turn, it allows running Docker inside Jenkins.

## Usage
The following Makefile commands can be used to manage the container:
- `make build run show-psw`: Build and run the Jenkins container (`localhost:9090`), showing the password as last output. Use it for the first setup;
- `make` or `make run`: Start the Jenkins container;
- `make build`: Build the Jenkins container;
- `make stop`: Stop and remove the Jenkins container;
- `show-psw`: Show password required for first login.

***DISCLAIMER**: The Jenkins container is run as root. This easy configuration is intended for local usage / testing.*
