module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "gsg-lambda-bucket"
  acl    = "public-read-write"

  versioning = {
    enabled = false
  }

}

provider "aws" {
  profile = "aws-bts-royaltylink-nonprod"
  region  = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket  = "drest-s3"
    key     = "tfstate/gsg-apigateway.tfstate"
    region  = "eu-west-1"
    profile = "aws-bts-royaltylink-nonprod"
  }
}