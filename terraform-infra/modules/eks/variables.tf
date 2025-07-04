variable "cluster_name" {}

variable "k8s_version" {}

variable "subnet_ids" {
  type = list(string)
}

variable "cluster_role_arn" {}

variable "node_role_arn" {}

variable "role_name" {
  description = "IAM Role name for the EKS control plane"
  type        = string
}

variable "node_role_name" {
  description = "IAM Role name for the EKS node group"
  type        = string
}

variable "assume_role_policy" {
  description = "IAM trust policy document for EKS roles"
  type        = string
}


