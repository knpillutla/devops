call rmdir /s /q c:\tmp\wms-builds\inventory
call git clone https://github.com/knpillutla/inventory.git c:\tmp\wms-builds\inventory
call cd c:\tmp\wms-builds\inventory
call mvn clean package docker:build 
call docker tag wms/inventory gcr.io/%1/inventory

