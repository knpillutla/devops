SET GOOGLE_CLOUD_PROJECT_ID=sanguine-torus-228819
 
call docker tag jhipster/jhipster-elasticsearch gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-elasticsearch
call docker tag jhipster/jhipster-logstash gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-logstash
call docker tag jhipster/jhipster-console gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-console
call docker tag jhipster/jhipster-import-dashboards gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-import-dashboards
call docker tag jhipster/jhipster-curator gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-curator
call docker tag jhipster/jhipster-alerter gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-alerter
call docker tag jhipster/jhipster-zipkin gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-zipkin
call docker tag threedsoft/customerorder gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customerorder

call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-elasticsearch
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-logstash
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-console
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-import-dashboards
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-curator
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-alerter
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/jhipster-zipkin
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customerorder
