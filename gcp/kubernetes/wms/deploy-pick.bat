call kubectl delete deployment pick-deployment
call docker tag threedsoft/pick gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/pick
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/pick
call kubectl apply -f service-pick.yaml
TIMEOUT 80