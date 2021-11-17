variable "region" {
    type = string
    description = "AWS Region"
    defualt = "us-east-1"
}

variable "vpc_name" {
    description = "Name of VPC"
    default = 
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

