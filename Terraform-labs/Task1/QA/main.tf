module "environment2" {
  source = "../modules/ec2_module"
  ec2_size = var.QA_size
  workspaces = QA
}