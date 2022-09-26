# Docker Compose

## Usage

### Deploying

./up.sh

### Tearding down

./down.sh

## Excercises

- Open the website in the browser i.e., launch "<IP>:8080" where IP is that of the docker Virtual Machine
- Run docker container ls
- Run docker container logs <container-id|container-name>
- Run docker stats
- Run docker network ls

Note: to get the addressable IP of the Virtual Machine, run the following from inside the Virtual Machine.
```
ip a | grep "192.168"
```

Note: the corperate VPN will interfere with the routing. Disconnect from the VPN to use browser access.
