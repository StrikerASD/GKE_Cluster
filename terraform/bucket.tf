module "gke_state_bucket" {
  source = "github.com/StrikerASD/GKE_Module_State_Bucket"
  google_kms_key_ring_project = "sb-izal-20240703-111957"
  google_kms_crypto_key_key_ring = "gke-keyring"
  google_kms_crypto_key_iam_member_crypto_key_id = "sb-izal-20240703-111957/europe-west3/gke-keyring/gke-crypto-key"
  google_kms_crypto_key_iam_member_member = "serviceAccount:jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
#   google_storage_bucket_name = "terraform_state_bucket-2247699"
#   google_storage_bucket_encryption_default_kms_key_name = "projects/sb-izal-20240703-111957/locations/europe-west3/keyRings/gke-keyring/cryptoKeys/gke-crypto-key"
}

