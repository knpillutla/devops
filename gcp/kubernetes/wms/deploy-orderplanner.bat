call kubectl delete deployment orderplanner-deployment
call docker tag threedsoft/orderplanner gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/orderplanner
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/orderplanner
call kubectl apply -f service-orderplanner.yaml
TIMEOUT 80