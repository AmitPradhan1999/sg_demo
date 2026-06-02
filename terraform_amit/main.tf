# provider "aws" {
#   region = "us-east-1"
# }
# resource "aws_s3_bucket" "name" {
#     # bucket = "amit6238"
#     count = 3
#     bucket = count.index == 1 ? "amitlatest" : "amitlatest-${count.index}"
#     tags = {
#         Name = "My bucket"
#         environment = "Dev"
#     }
# }

provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "name" {
    bucket = var.bucket_name
    tags = {
        region = var.bucket_name
        Environment = var.environment
    }
}


# resource "aws_ec2_instance" "ec2instance" {
#   ami           = "ami-0c55b159cbfafe1f0"
#   instance_type = "t2.micro"
#   tags = {
#     Name        = "My EC2 Instance"
#     Environment = "prod"
#   }
# }

