call rmdir /s /q c:\tmp\wms-builds\shipping
call git clone https://github.com/knpillutla/shipping.git c:\tmp\wms-builds\shipping
call cd c:\tmp\wms-builds\shipping
call mvn clean package docker:build 
call docker tag wms/shipping gcr.io/%1/shipping
call docker push gcr.io/%1/shipping
