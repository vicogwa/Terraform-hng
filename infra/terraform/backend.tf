terraform {
  required_version = ">= 1.0"
  
  # Option 1: S3 Backend (AWS)
  backend "s3" {
    bucket         = "samjean-s3-bucket"
    key            = "todo-app/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }

  # Option 2: Terraform Cloud (Uncomment if using)
  # cloud {
  #   organization = "your-org"
  #   workspaces {
  #     name = "todo-app"
  #   }
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}