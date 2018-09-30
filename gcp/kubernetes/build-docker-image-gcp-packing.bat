call rmdir /s /q c:\tmp\wms-builds\packing
call git clone https://github.com/knpillutla/packing.git c:\tmp\wms-builds\packing
call cd c:\tmp\wms-builds\packing
call mvn clean package docker:build 
call docker tag wms/packing gcr.io/wms-as-a-service/packing
call docker push gcr.io/wms-as-a-service/packing
