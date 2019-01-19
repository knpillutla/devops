SET GOOGLE_CLOUD_PROJECT_ID=sanguine-torus-228819
 
call docker tag wms/configservice gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/configservice
 call docker tag wms/user gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/user
call docker tag wms/customer-order gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customer-order
call docker tag wms/inventory gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/inventory
call docker tag wms/orderplanner gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/orderplanner
call docker tag wms/packing gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/packing
call docker tag wms/picking gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/picking
call docker tag wms/shipping gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipping
call docker tag wms/event-monitor gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/event-monitor
call docker tag wms/event-monitor-redis gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/event-monitor-redis
call docker tag wms/wmsui gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/wmsui

call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/user
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/configservice
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customer-order
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/inventory
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/orderplanner
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/packing
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/picking
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipping
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/event-monitor
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/event-monitor-redis
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/wmsui