call kubectl delete deployment wmsui-deployment
call docker tag wms/wmsui gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/wmsui
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/wmsui
call kubectl apply -f service-wmsui.yaml
TIMEOUT 80