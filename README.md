# Gateway Ansible Setup Scripts

Ansible scripts to setup your minimal system as an IoT gateway.

## Setup your host

### Ubuntu/Debian

```
apt -y install ansible
```

### Mac OS X

```
brew install ansible
```

## Deploy your SSH public key

Make sure to setup your SSH public key before calling ansible:

```
ssh-copy-id <gateway host>
```

## Gateway Targets

### IoT-Gateway

```
ansible-playbook -e "mqttuser= mqttpass= mqtthost= mqttport= gitci= arch=" -i targethost, iot-gateway.yml
```

Arguments:

 - **mqttuser**: mosquitto remote username
 - **mqttpass**: mosquitto remote password
 - **mqtthost**: remote mqtt address
 - **mqttport**: remote mqtt service port
 - **gitci**: address for your private hawkbit server
 - **arch**: docker container architecture (e.g. -arm64, -armhf or empty for x86)

**Note**: don't forget the comma after *targethost*!
