1. update appconfig/gcp/application.properties with the kafka ip address and postgres ipaddress and commit to git
2. update config service.yml with the kafka ipaddress
3. run initiatedeployment.bat to create config service first, after checking the docker logs, then continue to the next step
4. run startdeployment.bat to deploy remaining apps
5. to stop deployment run startdeployment.bat
6. k8cluster.cleanup.bat to tear down cluster
