variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "k8s_version" {
  description = "Kubernetes version for EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS cluster"
  type        = list(string)
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "assume_role_policy" {
  description = "IAM assume role policy JSON"
  type        = string
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1" 
}
variable "node_role_name" {
  description = "IAM Role name for the EKS node group"
  type        = string
}



