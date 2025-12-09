#!/bin/bash

CLUSTER_NAME="devops-php-cluster"
REGION="ap-south-1"

echo "⚠️ Deleting EKS cluster '$CLUSTER_NAME'..."
echo "This will remove all nodes, networking, and EKS resources."

eksctl delete cluster \
  --name $CLUSTER_NAME \
  --region $REGION

echo "🧹 Cleaning up orphan resources (if any)..."

# Delete leftover load balancers
aws elbv2 describe-load-balancers --region $REGION --query "LoadBalancers[*].LoadBalancerArn" --output text | \
while read lb; do
    echo "Deleting LB: $lb"
    aws elbv2 delete-load-balancer --load-balancer-arn "$lb" --region $REGION
done

# Delete unattached EBS volumes (optional)
aws ec2 describe-volumes --region $REGION --filters Name=status,Values=available \
  --query "Volumes[*].VolumeId" --output text | \
while read vol; do
    echo "Deleting unused volume: $vol"
    aws ec2 delete-volume --volume-id "$vol" --region $REGION
done

echo "🎉 Cluster deleted and cleanup complete!"
