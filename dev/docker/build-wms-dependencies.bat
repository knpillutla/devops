PUSHD .
call rmdir /s /q c:\tmp\wms-builds\wms-util
call git clone https://github.com/knpillutla/wms-util.git c:\tmp\wms-builds\wms-util
call cd c:\tmp\wms-builds\wms-util
call mvn clean compile package


call rmdir /s /q c:\tmp\wms-builds\customer-order-idd
call git clone https://github.com/knpillutla/customer-order-idd.git c:\tmp\wms-builds\customer-order-idd
call cd c:\tmp\wms-builds\customer-order-idd
call mvn clean compile package

call rmdir /s /q c:\tmp\wms-builds\inventory-idd
call git clone https://github.com/knpillutla/inventory-idd.git c:\tmp\wms-builds\inventory-idd
call cd c:\tmp\wms-builds\inventory-idd
call mvn clean compile package

call rmdir /s /q c:\tmp\wms-builds\orderplanner-idd
call git clone https://github.com/knpillutla/orderplanner-idd.git c:\tmp\wms-builds\orderplanner-idd
call cd c:\tmp\wms-builds\orderplanner-idd
call mvn clean compile package

call rmdir /s /q c:\tmp\wms-builds\packing-idd
call git clone https://github.com/knpillutla/packing-idd.git c:\tmp\wms-builds\packing-idd
call cd c:\tmp\wms-builds\packing-idd
call mvn clean compile package

call rmdir /s /q c:\tmp\wms-builds\picking-idd
call git clone https://github.com/knpillutla/picking-idd.git c:\tmp\wms-builds\picking-idd
call cd c:\tmp\wms-builds\picking-idd
call mvn clean compile package

call rmdir /s /q c:\tmp\wms-builds\shipping-idd
call git clone https://github.com/knpillutla/shipping-idd.git c:\tmp\wms-builds\shipping-idd
call cd c:\tmp\wms-builds\shipping-idd
call mvn clean compile package
POPD