call kubectl delete deployment workflow-deployment
call docker tag threedsoft/workflow gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/workflow
call docker push gcr.io/%GOOGLE_CLOUD_PROJECT_ID%/workflow
call kubectl apply -f service-workflow.yaml
TIMEOUT 80