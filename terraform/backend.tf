terraform {
  backend "gcs" {
    bucket  = "terraform_state_bucket-2247699"
    prefix  = "terraform/state"
  }
}