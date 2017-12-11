#!/bin/bash
docker volume create AngularServer
VOL=$( docker volume inspect AngularServer | grep Mountpoint | awk -F\" '{ print $4 }' )

echo "$VOL"
