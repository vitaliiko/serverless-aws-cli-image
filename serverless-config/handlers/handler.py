import boto3
import os

region = os.environ['AWS_REGION']
ec2 = boto3.client('ec2', region_name=region)

def lambda_handler(event, context):
    print('hello world')
