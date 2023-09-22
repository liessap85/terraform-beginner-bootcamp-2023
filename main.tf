# This is my first change

# This here is my second change, from github this time!


terraform {
  cloud {
    organization = "liessap85"

    workspaces {
      name = "terra-house-1"
    }
  }


    required_providers {
        random = {
            source = "hashicorp/random"
            version = "3.5.1"
        }
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "random" {
    # Config options
}

provider "aws" {
    region = "us-east-1"
}

resource "random_string" "bucket_name" {
    length = 16
    special = false
    upper = false

}

resource "aws_s3_bucket" "test_bucket_hlc_1985_3852" {
    bucket = random_string.bucket_name.id
} 


output "random_bucket_name" {
    value = random_string.bucket_name.id
}

