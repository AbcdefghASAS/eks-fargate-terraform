variable "region" {
    type = string
    description = "AWS Region"
    default = "us-east-1"
}

variable "vpc_name" {
    description = "Name of VPC"
    default = "eksss"
}

variable "vpc_cidr" {
    description = "CIDR Block of the VPC"
    default = "10.0.0.0/24"
}

variable "cidr_block_igw" {
    description = "CIDR Block for Internet and NAT Gateways"
    default = "10.0.0.128/26"
}

variable "eks_cluster_name" {
    description = "Name of the EKS Cluster"
    default = "testing"
}

 variable "public_subnets" {
 default = "10.0.0.128/26"
 }
 variable "private_subnets" {
 default = "10.0.0.192/26"
 }
variable "zones" {
  default = "us-east-1a"
}

variable "ng_instance_types" {
    type = list(string)
    default = "t2.micro"
}

variable "disk_size" {
    default = "8"
}

variable "desired_nodes" {
    description = "1"
}

variable "max_nodes" {
    description = "2"
}

variable "min_nodes" {
    description = "2"
}



