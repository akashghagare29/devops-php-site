#!/bin/bash

CLUSTER_NAME="devops-php-cluster"
NODEGROUP_NAME="standard-workers"
REGION="ap-south-1"

echo "🚀 Creating EKS cluster '$CLUSTER_NAME' with node group '$NODEGROUP_NAME'..."

eksctl create cluster \
  --name $CLUSTER_NAME \
  --region $REGION \
  --nodegroup-name $NODEGROUP_NAME \
  --nodes 1 \
  --nodes-min 1 \
  --nodes-max 1 \
  --node-type t2.micro \
  --managed

echo "⏳ Waiting for nodes..."
sleep 20

kubectl get nodes

echo "✅ EKS cluster is ready!"
