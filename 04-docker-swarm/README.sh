# Docker Swarm

## Usage

To build

images/nginx/build.sh
images/php/build.sh

To deploy

./up.sh

To undeploy

./down.sh

## Support for Local Registeries

### Setup registry on one of the docker nodes

Choose a single docker node to host the local registry.

Run the following

./setup-registry.sh

### Setup unsecure override

By default, Docker will refuse not to use a HTTPS registry. Use this override on
each of the Docker nodes to override.

```

sudo tee <<"EOF" /etc/docker/daemon.json 
{
  "insecure-registries" : ["registry.local:5000"]
}
EOF
sudo systemctl restart docker
```

### Setup static hosts reference

Each Docker node will need to resolve the domain "registry.local". Use this static
configuration on each Docker node to configure the domain. Remember to update the IP
address to the address of the docker node you configured.

```
IP_ADDRESS_OF_REGISTRY="192.168.56.101"
if grep -q " registry.local" /etc/hosts; then
	sudo sed -i "/^.* registry\.local/$IP_ADDRESS_OF_REGISTRY registry.local/g" /etc/hosts
else
	tee -a <<EOF /etc/hosts
$IP_ADDRESS_OF_REGISTRY registry.local
EOF
fi

```
