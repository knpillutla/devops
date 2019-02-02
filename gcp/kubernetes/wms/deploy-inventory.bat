call kubectl delete deployment inventory-deployment
call docker tag threedsoft/inventory gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/inventory
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/inventory
call kubectl apply -f service-inventory.yaml
TIMEOUT 80