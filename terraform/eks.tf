module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name                   = "${var.environment}-cluster"
  cluster_version = var.eks_version
  cluster_endpoint_public_access = true

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets

  eks_managed_node_group_defaults = {
     instance_types = ["t2.micro"]
 }

  eks_managed_node_groups = {
     worker_node = {
     min_size     = var.eks_worker_min_size
     max_size     = var.eks_worker_max_size
     desired_size = var.eks_worker_desired_size

     instance_types = var.eks_worker_instance_type
     capacity_type  = "SPOT"
     }
  }

  tags = {
        Terraform = "true"
        Environment = var.environment
  }
}
