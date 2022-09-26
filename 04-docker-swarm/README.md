# Docker Swarm

Demonstration project for running a Docker swarm.

## Setup Local Registry

In order to support a swarm, a centralized registry is necessary.

### Part 1: Launch registry on one of the docker nodes

Choose a single docker node to host the local registry.

Run the following

```
./setup-registry.sh
```

### Part 2: Static hosts reference

Each Docker node will need to resolve the domain "registry.local". Use this static
configuration on each Docker node to configure the domain. 

Remember to update the IP address to the address of the docker node you configured. To discover the IP, use
'ip a | grep 192.168' on the node running the registry.

```
IP_ADDRESS_OF_REGISTRY="192.168.56.101"

if grep -q " registry.local" /etc/hosts; then
	sudo sed -i "s/^.* registry\.local/$IP_ADDRESS_OF_REGISTRY registry.local/g" /etc/hosts
else
	sudo tee -a <<EOF /etc/hosts &> /dev/null
$IP_ADDRESS_OF_REGISTRY registry.local
EOF
fi
```

## Build images

Run the following

```
images/nginx/build.sh
images/php/build.sh
```

## Deploy

./up.sh

## Tear down

./down.sh

## Excercises

- Open the website in the browser i.e., launch "<IP>:8080" where IP is that of a manager node
- docker node ls
- docker stack ls
- docker service ls
- docker service ps <service-id|service-name>
- docker service logs <service-id>
- docker service logs <task-id>

Note: to get the addressable IP of the Virtual Machine, run the following from inside a manager Virtual Machine.
```
ip a | grep "192.168"
```

Note: the corperate VPN will interfere with the routing. Disconnect from the VPN to use browser access.


