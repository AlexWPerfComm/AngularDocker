#!/bin/bash
docker run -p 8080:8080 -p 4200:4200 --mount source=AngularServer,destination=/opt/mount -it npmc bash #ng serve --host 0.0.0.0 --port 3000
