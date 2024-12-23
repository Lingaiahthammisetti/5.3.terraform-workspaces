terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
  backend "s3" {
      bucket ="tf-workspaces-remote-state"
      key="tf-workspaces-key"
      region="us-east-1"
      dynamodb_table="tf-workspaces-remote-state-locking"
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}