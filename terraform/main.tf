module "vpc" {
  source = "./modules/vpc"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
}

module "eks" {
  source = "./modules/eks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  node_groups = {
    demo = {
      desired_size   = var.desired_size
      max_size       = var.max_size
      min_size       = var.min_size
      instance_types = var.instance_types
    }
  }
}

module "s3_bucket" {
  source = "./modules/s3_bucket"

  bucket_name = "my-demo-bucket-${random_string.suffix.result}"
  versioning  = true
  tags = {
    Environment = "demo"
    Project     = "terraform-modules"
  }
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}