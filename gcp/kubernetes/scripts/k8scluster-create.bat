SET GOOGLE_CLOUD_PROJECT_ID=bright-seer-219503

call gcloud auth login
call gcloud config set project %GOOGLE_CLOUD_PROJECT_ID%
call gcloud config set compute/zone us-east4-b
rem call gcloud container clusters create wmscluster1
rem for creating elastic search logging
call gcloud container clusters create wmscluster1 --no-enable-cloud-logging --num-nodes=3 --machine-type=n1-standard-2
call gcloud container clusters get-credentials wmscluster1
call gcloud compute instances list
call kubectl create clusterrolebinding admin --clusterrole=cluster-admin --serviceaccount=default:default

rem create post gres sql
gcloud sql instances create mypostgres --database-version=POSTGRES_9_6 --cpu=2 --availability-type=regional --authorized-networks=0.0.0.0/0 --region=us-east4 --assign-ip --memory=4GiB

