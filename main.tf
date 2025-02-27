module "terraform_state_backend" {
  version = "1.5.0"
  source     = "cloudposse/tfstate-backend/aws"
  namespace  = "example"
  stage      = "prod"
  name       = "aws-lagm-123-terraform"
  attributes = ["state"]

  terraform_backend_config_file_path = "."
  terraform_backend_config_file_name = "backend.tf"
  force_destroy                      = false
}
