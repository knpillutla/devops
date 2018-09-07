call rmdir /s /q c:\tmp\wms-builds\picking
call git clone https://github.com/knpillutla/picking.git c:\tmp\wms-builds\picking
call cd c:\tmp\wms-builds\picking
call mvn clean package docker:build 
call docker tag wms/picking gcr.io/wms-as-a-service/picking
call docker push gcr.io/wms-as-a-service/picking
