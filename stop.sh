#!/bin/bash

CLUSTER_NAME="devops-php-cluster"
NODEGROUP_NAME="standard-workers"

echo "📉 Scaling EKS node group '$NODEGROUP_NAME' to 0 to avoid costs..."

aws eks update-nodegroup-config \
  --cluster-name "$CLUSTER_NAME" \
  --nodegroup-name "$NODEGROUP_NAME" \
  --scaling-config minSize=0,maxSize=0,desiredSize=0

echo "⏳ Waiting 15 seconds for AWS to apply the changes..."
sleep 15

echo "🔍 Checking current EKS node status..."
kubectl get nodes

echo "✅ All worker nodes should now be stopped (EC2 instances shut down)."
