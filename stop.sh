#!/bin/bash

CLUSTER_NAME="devops-php-cluster"
NODEGROUP_NAME="standard-workers"

echo "📉 Scaling EKS node group to 0 to avoid costs..."

aws eks update-nodegroup-config \
  --cluster-name $CLUSTER_NAME \
  --nodegroup-name $NODEGROUP_NAME \
  --scaling-config minSize=0,maxSize=0,desiredSize=0

echo "✅ All worker nodes stopped. EKS is now in cost-saving mode!"
