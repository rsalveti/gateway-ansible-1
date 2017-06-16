# Gateway target hostname
hostname=[REPLACE WITH YOUR GATEWAY IP]

# Docker tag to use
tag=latest-arm64

# Location where hawkbit is running
gitci=[IP WHERE HAWKBIT IS RUNNING]

#Cloudmqtt configuration
cloudmqtthost=m12.cloudmqtt.com
cloudmqttport=18645
cloudmqttuser=[cloudmqtt username]
cloudmqttpw=[cloudmqtt password]

#First argument Ansible tags
ansibletags="$1"

ansible-playbook -e "mqttuser=$cloudmqttuser mqttpass=$cloudmqttpw mqtthost=$cloudmqtthost mqttport=$cloudmqttport "\
                 -e "gitci=$gitci tag=$tag" \
                 -e "brokerhost=$hostname brokeruser='' brokerpw=''" \
                  -i linaro@$hostname, iot-gateway.yml --tags $ansibletags
