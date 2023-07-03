
provider "aws" {
  region = "us-east-2"
}

module "eks_cluster" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name = "my-eks-cluster"
  cluster_version = "1.21"

  vpc_id = "your-vpc-id"
  subnet_ids = ["subnet-1", "subnet-2", "subnet-3"]

  worker_groups = [
    {
      instance_type = "t3.medium"
      desired_capacity = 2
      max_capacity = 3
      min_capacity = 1
    }
  ]

  # Additional configurations like node groups, managed node groups, etc. can be added here as needed
}

