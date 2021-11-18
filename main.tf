provider "aws" {
  region = "us-east-1"
}


module "network" {
  source              = "./network"
  region              = var.region
  main_vpc_cidr       = var.vpc_cidr
  public_subnets      = var.public_subnets
  private_subnets     = var.private_subnets
  eks_cluster_name    = var.eks_cluster_name
}

module "eks_cluster" {
  source              = "./eks/eks_cluster"
  cluster_name        = var.eks_cluster_name
  public_subnets      = module.network.aws_subnets_public
  private_subnets     = module.network.aws_subnets_private
} 

module "eks_node_group" {
  source            = "./eks/eks_node_group"
  eks_cluster_name  = module.eks_cluster.cluster_name
  node_group_name   = var.node_group_name
  subnet_ids        = flatten([module.network.aws_subnets_private,module.network.aws_subnets_private])  
  instance_types    = var.ng_instance_types
  disk_size         = var.disk_size
  desired_nodes     = var.desired_nodes
  max_nodes         = var.max_nodes
  min_nodes         = var.min_nodes
}

module "fargate" {
  source                  = "./eks/fargate"
  eks_cluster_name        = module.eks_cluster.cluster_name
  fargate_profile_name    = var.fargate_profile_name
  subnet_ids              = module.network.aws_subnets_private
  kubernetes_namespace    = var.kubernetes_namespace
}


module "kubernetes" {
  source                = "./kubernetes"
  region                = var.region
  vpc_id                = module.network.vpc_id
  vpc_cidr              = var.vpc_cidr
  efs_subnet_ids        = module.network.aws_subnets_private
  eks_cluster_name      = module.eks_cluster.cluster_name
  eks_cluster_endpoint  = module.eks_cluster.endpoint
  eks_oidc_url          = module.eks_cluster.oidc_url
  eks_ca_certificate    = module.eks_cluster.ca_certificate
  namespace             = var.kubernetes_namespace
  deployment_name       = var.deployment_name
  replicas              = var.deployment_replicas
  labels                = var.app_labels
  namespace_depends_on  = [ module.fargate.id , module.eks_node_group.id ]
}
