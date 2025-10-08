terraform {
  required_version = "~> 1.13.3" //  Value mention as per your terraform version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.15.0" // Value mention as per your aws version
    }
  }
}

provider "aws" {
  region = "us-east-1"
  #profile = "default"

}

resource "aws_instance" "noname" {
  ami           = "ami-052064a798f08f0d3" // Refer aws and get correct ami id
  count = 3
  instance_type = "t2.micro"
  tags = {
        	Name = "Terraforminst-${count.index}"
 	}
}
