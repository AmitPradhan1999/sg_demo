provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "my-terraform-state-1991example"  //it should be pre exist bucket
    key    = "devjune2026.tfstate"
    region = "us-east-1"
  }
}