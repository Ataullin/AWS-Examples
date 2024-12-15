#!/bin/bash

#!/bin/bash

# Check for bucket name
if [ -z "$1" ]; then
    echo "Bucket name is required. Example: ./script.sh my-bucket us-east-1"
    exit 1
fi

# Check for region
if [ -z "$2" ]; then
    echo "Region is required. Example: ./script.sh my-bucket us-east-1"
    exit 1
fi

BUCKET_NAME=$1
REGION=$2

# Create bucket
aws s3api create-bucket \
    --bucket "$BUCKET_NAME" \
    --region "$REGION" \
    --create-bucket-configuration LocationConstraint="$REGION"

# Output success message
if [ $? -eq 0 ]; then
    echo "Bucket $BUCKET_NAME created successfully in region $REGION."
else
    echo "Failed to create bucket $BUCKET_NAME in region $REGION."
fi