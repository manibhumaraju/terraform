terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }
  backend "s3" {
    bucket = "mani-remote-state-s3"
    key    = "remote-state-demo-locking"
    region = "us-east-1"
    dynamodb_table = "remote-state-locking"

  }
}
 
provider "aws" {
  # Configuration options
  region = "us-east-1"
}