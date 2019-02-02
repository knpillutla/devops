call kubectl delete deployment customerorder-deployment
call docker tag threedsoft/customerorder gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customerorder
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/customerorder
call kubectl apply -f service-customerorder.yaml
TIMEOUT 80