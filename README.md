# AngularDocker

This is a blank docker container being built to run an Angular + Java based web service for QA tools.

### Installation

Obviously you need docker installed...after that you can build the docker image with the included file `build.sh`.

If you wish to build it manually, just navigate to the Dockerfile and run:  
```docker build -t <name> .```

### Running

The included file `run.sh` should run it if you used the build script as well.

If you built it manually, you run it with the command: (It's port 3000 currently)
```docker run -p <host port>:<container port> <name> npm start```

#### Etc

These instructions will change as the container evolves, please read if anything goes haywire.
