# On demand Minecraft server
This set of scripts spins up a Minecraft server using @itzg's [minecraft server
docker image](https://github.com/itzg/dockerfiles/tree/master/minecraft-server).

It adds functionality by making it easy to spin up and down a server without
loosing server configurations or your Minecraft world.

## Usage
Spin it up (which brings up the spot instance and the Minecraft server)
```
./up.sh
```
And bring it down (which automatically backups and destroys the instance)
```
./down.sh
```

## Configuration
Prior to jumping the gun and running the scripts, you'll need to make some
configurations.

### AWS
A previously created security group with port 25565 open to 0.0.0.0 or whatever
you want to set it to.

A VPC with a subnet where to put the machine.

The appropriate AWS user configured on your machine.

### Namecheap
You'll need to enable dynamicdns for your domain and use the key provided by
them in the config file.

### Config file
You need to edit the `config.sh` file or copy it to `config.local` and make your
changes there.

The variables marked with `### CHANGE ME!` need to be configured.

## Requirements
### Packages
```
apt-get install jq
pip install docker-compose
```
You will also need `docker-machine`.
