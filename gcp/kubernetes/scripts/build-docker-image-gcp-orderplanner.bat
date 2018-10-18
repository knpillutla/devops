call rmdir /s /q c:\tmp\wms-builds\orderplanner
call git clone https://github.com/knpillutla/orderplanner.git c:\tmp\wms-builds\orderplanner
call cd c:\tmp\wms-builds\orderplanner
call mvn clean package docker:build 
call docker tag wms/orderplanner gcr.io/%1/orderplanner
call docker push gcr.io/%1/orderplanner
