gcloud container clusters update [CLUSTER_NAME] --enable-autoscaling \
    --min-nodes 0 --max-nodes 10 --node-pool [NODE_POOL_NAME]
	
	or
	
	gcloud container clusters update [CLUSTER_NAME] --no-enable-autoscaling \
--node-pool [NODE_POOL_NAME] --project [PROJECT_ID]]

gcloud container clusters resize [CLUSTER_NAME] --size=0

