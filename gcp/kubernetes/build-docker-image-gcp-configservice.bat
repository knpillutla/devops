call rmdir /s /q c:\tmp\wms-builds\configservice
call git clone https://github.com/knpillutla/configservice.git c:\tmp\wms-builds\configservice
call cd c:\tmp\wms-builds\configservice
call mvn clean package docker:build 
call docker tag wms/configservice gcr.io/wms-as-a-service/configservice
call docker push gcr.io/wms-as-a-service/configservice
rem docker-compose -f docker-compose-gcp-elk.yml up --build -d
rem docker-compose -f docker-compose-gcp-kafka.yml up --build -d
rem docker-compose -f docker-compose-gcp-postgres.yml up --build -d

rem docker-compose -f docker-compose-gcp-logstash.yml up --build -d
rem docker-compose -f docker-compose-gcp-picking-nologstash.yml up --build -d


rem docker-compose -f docker-compose-gcp-picking.yml up --build -d
rem docker-compose -f docker-compose-azure.yml up --build -d