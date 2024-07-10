module "gke_state_bucket" {
  source                                  = "github.com/StrikerASD/GKE_Module_State_Bucket"
  google_kms_key_ring_name                = "gke-keyring-3"
  google_kms_crypto_key_name              = "gke-crypto-3"
  google_kms_key_ring_project             = "sb-izal-20240703-111957"
  google_kms_crypto_key_iam_member_member = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
  google_storage_bucket_name              = "terraform_state_bucket-2247699"
}

output "key_ring_id" {
  value = module.gke_state_bucket.key_ring
}

output "key_id" {
  value = module.gke_state_bucket.my_key
}