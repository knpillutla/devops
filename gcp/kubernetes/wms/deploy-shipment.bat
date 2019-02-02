call kubectl delete deployment shipment-deployment
call docker tag threedsoft/shipment gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipment
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipment
call kubectl apply -f service-shipment.yaml
TIMEOUT 80