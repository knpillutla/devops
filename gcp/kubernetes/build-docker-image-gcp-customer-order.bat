call rmdir /s /q c:\tmp\wms-builds\customer-order
call git clone https://github.com/knpillutla/customer-order.git c:\tmp\wms-builds\customer-order
call cd c:\tmp\wms-builds\customer-order
call mvn clean package docker:build 
call docker tag wms/customer-order gcr.io/wms-as-a-service/customer-order
call docker push gcr.io/wms-as-a-service/customer-order
