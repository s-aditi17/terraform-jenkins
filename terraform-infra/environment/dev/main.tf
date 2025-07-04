provider "aws" {
  region = var.region
}

module "iam" {
  source = "../../modules/iam"
}

module "eks" {
  source           = "../../modules/eks"
  cluster_name     = var.cluster_name
  k8s_version      = var.k8s_version
  subnet_ids       = var.subnet_ids
  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn
}

