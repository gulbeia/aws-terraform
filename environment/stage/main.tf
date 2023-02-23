terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}


module "networking" {
  source      = "../../modules/network"
  vpc_cidr_block                = "172.31.0.0/16"
  max_subnets                   = 6
  public_cidrs                  = ["172.31.1.0/16", "172.31.2.0/16"]
  private_cidrs                 = ["172.31.3.0/16", "172.31.4.0/16", "172.31.5.0/16", "172.31.0.0/16"]
  azs                           = ["us-east-2a",   "us-east-2b"]
  isntance_type                 = ["t2.small"]
  key_name                      = ["prod-bastion-host-key"]
  associate_public_ip_address   = ["192.168.0.0/16"]
  evn                           = "stage"
}



