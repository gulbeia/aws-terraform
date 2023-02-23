terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


module "networking" {
  source      = "../../modules/network"
  vpc_cidr_block                = "192.168.0.0/16"
  max_subnets                   = 4
  public_cidrs                  = ["192.168.1.0/24", "192.168.2.0/24"]
  private_cidrs                 = ["192.168.3.0/24", "192.168.4.0/24"]
  azs                           = ["us-east-1a",   "us-east-1b"]
  instance_type                 = "t2.micro"
  key_name                      = "prod-bastion-host-key"
  associate_public_ip_address   = "true"
  env                           = "dev"
}



