provider "aws" {
  region = var.aws_region
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.8"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids      = var.subnet_ids        
  vpc_id          = var.vpc_id

  eks_managed_node_groups = {             
    bright_eks_nodes = {
      name         = "brightex-eks-cluster"
      desired_size = 1
      max_size     = 2
      min_size     = 1
      instance_types = ["t3.medium"]
    }
  }

  tags = var.tags
}
