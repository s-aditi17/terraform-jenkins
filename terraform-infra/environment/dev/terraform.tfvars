cluster_name = "dev-eks-cluster"
k8s_version  = "1.29"
region       = "us-east-1"

subnet_ids = [
  "subnet-0827fef02ba6493c8",
  "subnet-0f5de8d4d65db06f0",
  "subnet-0d28fdddb4c94222a"
]


role_name        = "eks-cluster-role"
node_role_name   = "eks-node-group-role"




assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
