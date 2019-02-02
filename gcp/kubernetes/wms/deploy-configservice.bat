call kubectl delete deployment config-deployment
call docker tag wms/configservice gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/configservice
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/configservice
call kubectl apply -f service-config.yaml
TIMEOUT 80