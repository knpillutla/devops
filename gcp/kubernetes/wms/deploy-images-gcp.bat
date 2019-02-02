SET GOOGLE_CLOUD_PROJECT_ID=sanguine-torus-228819
 
rem call docker tag jhipster/jhipster-elasticsearch gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-elasticsearch
rem call docker tag jhipster/jhipster-logstash gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-logstash
rem call docker tag jhipster/jhipster-console gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-console
rem call docker tag jhipster/jhipster-import-dashboards gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-import-dashboards
rem call docker tag jhipster/jhipster-curator gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-curator
rem call docker tag jhipster/jhipster-alerter gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-alerter
rem call docker tag jhipster/jhipster-zipkin gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-zipkin
call docker tag wms/configservice gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/configservice
call docker tag wms/user gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/user
call docker tag threedsoft/customerorder gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customerorder
call docker tag threedsoft/inventory gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/inventory
call docker tag threedsoft/orderplanner gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/orderplanner
call docker tag threedsoft/shipment gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipment
call docker tag threedsoft/pick gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/pick
call docker tag threedsoft/pack gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/pack
call docker tag threedsoft/shipengine gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipengine
call docker tag threedsoft/print gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/print
call docker tag threedsoft/workflow gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/workflow
call docker tag wms/wmsui gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/wmsui

rem call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-elasticsearch
rem call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-logstash
rem call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-console
rem call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-import-dashboards
rem call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-curator
rem call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-alerter
rem call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-zipkin
rem call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customerorder
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/user
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/configservice
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customerorder
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/inventory
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/orderplanner
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipment
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/pick
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/pack
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipengine
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/print
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/workflow
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/wmsui

call docker tag threedsoft/customerorder gcr.io/sanguine-torus-228819/customerorder
call docker push gcr.io/sanguine-torus-228819/customerorder
