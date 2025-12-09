#!/bin/bash

CLUSTER_NAME="devops-php-cluster"
NODEGROUP_NAME="standard-workers"

echo "🚀 Starting EKS node group '$NODEGROUP_NAME'..."

aws eks update-nodegroup-config \
  --cluster-name "$CLUSTER_NAME" \
  --nodegroup-name "$NODEGROUP_NAME" \
  --scaling-config minSize=1,maxSize=1,desiredSize=1

echo "⏳ Waiting for node to become Ready..."
sleep 40

kubectl get nodes

echo "✅ EKS is fully up and running!"
