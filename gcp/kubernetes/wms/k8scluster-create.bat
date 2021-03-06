rem last cluster started on 12/26/2018 after chrismas day(12/25) at 12:10 a.m. check how long will the cluster run before running out of free credit
SET GOOGLE_CLOUD_PROJECT_ID=sanguine-torus-228819

call gcloud auth login
call gcloud config set project %GOOGLE_CLOUD_PROJECT_ID%
call gcloud config set compute/zone us-east4-b
rem call gcloud container clusters create wmscluster1
rem for creating elastic search logging
call gcloud container clusters create wmscluster100 --no-enable-cloud-logging --num-nodes=3 --machine-type=n1-highmem-2 --enable-autoscaling --max-nodes=5 --min-nodes=3
call gcloud container clusters get-credentials wmscluster100
call gcloud compute instances list
call kubectl create clusterrolebinding admin --clusterrole=cluster-admin
rem call kubectl create clusterrolebinding cluster-admin-binding --clusterrole cluster-admin --user krishna
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4
rem call gcloud compute addresses create customer-order-ip --region us-east4


rem create post gres sql
rem gcloud sql instances create mypostgres --database-version=POSTGRES_9_6 --cpu=2 --availability-type=regional --authorized-networks=0.0.0.0/0 --region=us-east4 --assign-ip --memory=4GiB

