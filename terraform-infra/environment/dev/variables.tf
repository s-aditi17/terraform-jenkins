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
