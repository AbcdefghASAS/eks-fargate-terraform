variable "region" {}
 variable "main_vpc_cidr" {}
 variable "public_subnets" {}
 variable "private_subnets" {}
variable "eks_cluster_name" {
    default = "testing"
}
