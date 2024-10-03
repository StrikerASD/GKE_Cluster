### IMPORTANT ###
# When GCP box is created, new compute service account is created by default.
# It's crucial to update it's name here in this module usage.
#################

module "gke" {
  source                      = "github.com/StrikerASD/GKE"
  project                     = var.project_id
  sa_account_id               = var.default_compute_service_account
  sa_display_name             = "Default compute service account"
  container_cluster_name      = "rancher-cluster"
  container_node_pool_name    = "worker-pool"
  google_compute_network_name = "gke-vpc"
  deletion_protection         = false
}