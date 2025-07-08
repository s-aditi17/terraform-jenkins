provider "aws" {
  region = var.aws_region
}

module "iam" {
  source = "../../modules/iam"
  role_name           = var.role_name
  assume_role_policy  = var.assume_role_policy
}

module "eks" {
  source           = "../../modules/eks"
  cluster_name     = var.cluster_name
  k8s_version      = var.k8s_version
  subnet_ids       = var.subnet_ids
  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn
  assume_role_policy   = var.assume_role_policy     
  role_name            = var.role_name       
  node_role_name       = var.node_role_name 
}

