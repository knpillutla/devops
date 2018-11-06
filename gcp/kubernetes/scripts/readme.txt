1. update appconfig/gcp/application.properties with the kafka ip address and postgres ipaddress and commit to git
2. update config service.yml with the kafka ipaddress
3. run initiatedeployment.bat to create config service first, after checking the docker logs, then continue to the next step
4. run startdeployment.bat to deploy remaining apps
5. to stop deployment run startdeployment.bat
6. k8cluster.cleanup.bat to tear down cluster


the following needs to be done if starting a new cluster on a new account
1. update k8cluster-start.bat with the new project id
2. update deploy-images.bat with the new project id
3. update all yml files with the image name to update with new project id
4. create new sql instance in gcp and change password to postgres, authorize public network should be checked and add 0.0.0.0/0 to the authorized ip range
5. go to firewalls rule and create a new postgres-5432 rule to allow traffic from 0.0.0.0/0 to tcp 5342 with target as all in the network
6. local consumer do not directly connect to kafka by default. Do the following to connect from external clients
edit the server properties file
ssh to kafka vm
sudo vim /opt/kafka/config/server.properties
Uncomment the line # advertised.listeners=PLAINTEXT://:9092 and replace with advertised.listeners=PLAINTEXT://[instance_public_id_address]:9092
restart the kafka service
sudo systemctl restart kafka

This should let you connect from remote producers and consumers
7. edit the default-allow-all-internal firewall rule for kafka vm and change the source ip range to 0.0.0.0/0
8. update config service.yml to kafka internal host ip. this will use internal traffic rather than using external ephemeric ip
9. update appconfig/gcp/application.properties and set the kafka host to internal ip
10. update postgres url in the application.properties to the ephemeral ip
11. start initiate deployment script to start config service
12. start deployment script to start all other services
13. note down the external ip for all the services and create dns entries in cloud dns with A records as indicated in dns.txt file.This will allow internet dns names to connect to the cluster

