call kubectl delete deployment user-deployment
call docker tag wms/user gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/user
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/user
call kubectl apply -f service-user.yaml
TIMEOUT 80