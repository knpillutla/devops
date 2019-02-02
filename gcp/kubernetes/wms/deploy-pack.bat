call kubectl delete deployment pack-deployment
call docker tag threedsoft/pack gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/pack
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/pack
call kubectl apply -f service-pack.yaml
TIMEOUT 80