call rmdir /s /q c:\tmp\wms-builds\configservice
call git clone https://github.com/knpillutla/configservice.git c:\tmp\wms-builds\configservice
call cd c:\tmp\wms-builds\configservice
call mvn clean package docker:build 


call rmdir /s /q c:\tmp\wms-builds\customer-order
call git clone https://github.com/knpillutla/customer-order.git c:\tmp\wms-builds\customer-order
call cd c:\tmp\wms-builds\customer-order
call mvn clean package docker:build 



call rmdir /s /q c:\tmp\wms-builds\inventory
call git clone https://github.com/knpillutla/inventory.git c:\tmp\wms-builds\inventory
call cd c:\tmp\wms-builds\inventory
call mvn clean package docker:build 



call rmdir /s /q c:\tmp\wms-builds\orderplanner
call git clone https://github.com/knpillutla/orderplanner.git c:\tmp\wms-builds\orderplanner
call cd c:\tmp\wms-builds\orderplanner
call mvn clean package docker:build 



call rmdir /s /q c:\tmp\wms-builds\packing
call git clone https://github.com/knpillutla/packing.git c:\tmp\wms-builds\packing
call cd c:\tmp\wms-builds\packing
call mvn clean package docker:build 

call rmdir /s /q c:\tmp\wms-builds\picking
call git clone https://github.com/knpillutla/picking.git c:\tmp\wms-builds\picking
call cd c:\tmp\wms-builds\picking
call mvn clean package docker:build 



call rmdir /s /q c:\tmp\wms-builds\shipping
call git clone https://github.com/knpillutla/shipping.git c:\tmp\wms-builds\shipping
call cd c:\tmp\wms-builds\shipping
call mvn clean package docker:build 

call rmdir /s /q c:\tmp\wms-builds\event-monitor
call git clone https://github.com/knpillutla/event-monitor.git c:\tmp\wms-builds\event-monitor
call cd c:\tmp\wms-builds\event-monitor
call mvn clean package docker:build 

call rmdir /s /q c:\tmp\wms-builds\user
call git clone https://github.com/knpillutla/user.git c:\tmp\wms-builds\user
call cd c:\tmp\wms-builds\user
call mvn clean package docker:build 