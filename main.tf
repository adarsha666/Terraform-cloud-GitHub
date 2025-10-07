terraform {
    required_version = "~> 1.13.3" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.15.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Devops" {
	ami = "ami-052064a798f08f0d3" 
	instance_type = "t2.micro"
}
