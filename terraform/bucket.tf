module "gke_state_bucket" {
  source                                  = "github.com/StrikerASD/GKE_Module_State_Bucket"
  google_kms_key_ring_name                = "gke-keyring"
  google_kms_crypto_key_name              = "gke-crypto"
  google_kms_key_ring_project             = "sb-izal-20240910-144605"
  google_kms_crypto_key_iam_member_member = "serviceAccount:gcp-github-access@sb-izal-20240910-144605.iam.gserviceaccount.com"
  google_storage_bucket_name              = "terraform_state_bucket-2247699"
}

output "key_ring_id" {
  value = module.gke_state_bucket.key_ring
}

output "key_id" {
  value = module.gke_state_bucket.my_key
}