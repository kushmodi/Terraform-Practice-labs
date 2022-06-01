module "environment1" {
  source = "../modules/ec2_module"
  ec2_size = var.prod_size
}