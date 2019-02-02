call kubectl delete deployment shipengine-deployment
call docker tag threedsoft/shipengine gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipengine
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/shipengine
call kubectl apply -f service-shipengine.yaml
TIMEOUT 80