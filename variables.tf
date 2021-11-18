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
 description = "t2.micro"
    default = ["t2.micro"]
}

variable "disk_size" {
    default = "8"
}

variable "desired_nodes" {
    default = "2"
}

variable "max_nodes" {
    default = "4"
}

variable "min_nodes" {
    default = "1"
}
variable "node_group_name" {
    type = string
    default = "Nodess"
}

variable "fargate_profile_name" {
    type = string
    description = "Name of the Fargate Profile"
    default = "fgta"
}

variable "kubernetes_namespace" {
    type = string
    description = "Kubernetes namespace for selection"
    default = "default"
}
variable "deployment_name" {
    type = string
    description = "Name of the Deployment"
    default = "deployment"
}

variable "deployment_replicas" {
    type = string
    description = "Number of replicas for the Deployment"
    default = "2"
}

variable "app_labels" {
    type = map
    description = "List of the labels for Deployment"
    default = "app"
}



