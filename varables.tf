##__     __     _      ____    ___      _      ____    _       _____   ____
##\ \   / /    / \    |  _ \  |_ _|    / \    | __ )  | |     | ____| / ___|
###\ \ / /    / _ \   | |_) |  | |    / _ \   |  _ \  | |     |  _|   \___ \
####\ V /    / ___ \  |  _ <   | |   / ___ \  | |_) | | |___  | |___   ___) |
#####\_/    /_/   \_\ |_| \_\ |___| /_/   \_\ |____/  |_____| |_____| |____/

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "VPC Block"
}

variable "environment" {
  default = "dev"
}

variable "max_size" {
  default = 1
}

variable "min_size" {
  default = 1
}

variable "desired_capacity" {
  default = 1
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ecs_aws_ami" {
  default = "ami-95f8d2f3"
}

variable "private_subnet_cidrs" {
  type    = "list"
  default = ["10.0.50.0/24", "10.0.51.0/24"]
}

variable "public_subnet_cidrs" {
  type    = "list"
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "availability_zones" {
  type    = "list"
  default = ["eu-west-1a", "eu-west-1b"]
}

output "default_alb_target_group" {
  value = "${module.ecs.default_alb_target_group}"
}
