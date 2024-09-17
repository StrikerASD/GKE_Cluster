### Initial terraform state needed until state bucket is created
# terraform {
#   backend "local" {
#     path = "terraform.tfstate"
#   }
# }

terraform {
  backend "gcs" {
    bucket = "gke_terraform_state_bucket-2247699"
    prefix = "terraform/state"
  }
}