# gateway ansible scripts

A few ansible scripts to setup your minimal system as an IoT gateway.

### setup your host

```
apt -y install ansible
copy your ssh key to the target systems authorized_keys file for a user that can run docker.
```

### configure specific target as a iot-gateway (don't forget the comma)

```
ansible-playbook -e "mqttuser= mqttpass= mqtthost= mqttport= gitci=" -i targethost, iot-gateway.yml
```
