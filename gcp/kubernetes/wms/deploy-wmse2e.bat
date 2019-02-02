call kubectl delete deployment wmse2e-deployment
call docker tag threedsoft/wms-e2e gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/wms-e2e
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/wms-e2e
call kubectl apply -f service-wmse2e.yaml
TIMEOUT 80