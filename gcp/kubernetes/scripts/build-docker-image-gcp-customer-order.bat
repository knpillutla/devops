call rmdir /s /q c:\tmp\wms-builds\customer-order
call git clone https://github.com/knpillutla/customer-order.git c:\tmp\wms-builds\customer-order
call cd c:\tmp\wms-builds\customer-order
call mvn clean package docker:build 
call docker tag wms/customer-order gcr.io/%1/customer-order

