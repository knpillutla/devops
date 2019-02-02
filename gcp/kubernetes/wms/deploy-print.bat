call kubectl delete deployment print-deployment
call docker tag threedsoft/print gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/print
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/print
call kubectl apply -f service-print.yaml
TIMEOUT 80