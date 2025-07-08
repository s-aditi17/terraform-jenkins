resource "aws_eks_node_group" "example" {
  # Your existing EKS Node Group config goes here (if not already defined)
}

data "aws_eks_cluster" "cluster" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "cluster" {
  name = var.cluster_name
}

resource "kubernetes_config_map" "aws_auth" {
  depends_on = [aws_eks_cluster.eks]

  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }

  data = {
    mapRoles = yamlencode([
      {
        rolearn  = "arn:aws:iam::140481471220:role/ec2-role"
        username = "ec2-role"
        groups   = ["system:masters"]
      }
    ])
  }
}
