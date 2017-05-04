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
ansible-playbook -e "mqttuser= mqttpass= mqtthost= mqttport= gitci= tag=" -i targethost, iot-gateway.yml
```

Arguments:

 - **mqttuser**: mosquitto remote username
 - **mqttpass**: mosquitto remote password
 - **mqtthost**: remote mqtt address
 - **mqttport**: remote mqtt service port
 - **gitci**: address for your private hawkbit server
 - **tag**: docker container tag (e.g. latest-arm64, latest-armhf or empty for latest)

**Note**: don't forget the comma after *targethost*!
