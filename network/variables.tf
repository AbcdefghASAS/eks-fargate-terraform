variable "vpc_name" {
    description = "Name of VPC"
    default = "letss"
}

variable "vpc_cidr" {
    description = "CIDR Block of the VPC"
    default = "10.0.0.0/24"
}

variable "eks_cluster_name" {
    description = "EKSSS"
    default = "EKSS"
}

variable "cidr_block_igw" {
    description = "10.0.0.128/26"
    default = "10.0.0.128/26"
}

variable "cidr_block_ng" {
    description = "10.0.0.192/26"
    default = "10.0.0.192/26"
}

variable "public_subnets" {
    description = "10.0.0.128/26"
    default = "10.0.0.128/26"
}

variable "private_subnets" {
    description = "10.0.0.192/26"
    default = "10.0.0.192/26"
}
