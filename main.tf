terraform {
  backend "s3" {
    bucket = "lab-fiap-grupo-2"
    key    = "workspaces"
    region = "us-east-1"
  }
}

module "api_cluster" {
  source = "./modules/api"
  count_instances = 2
}
