# provider.tf

# Specify the Terraform version
terraform {
  required_version = ">= 1.0.0"
  
  # Specify required providers and their versions
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS provider
provider "aws" {
  region  = "us-east-1"              # Set your AWS region
  profile = "my-aws-profile"         # Optional: Set AWS CLI profile (if configured)
}

# Optionally, you can use environment variables like AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY instead of a profile.

