module "gke" {
  source                      = "github.com/StrikerASD/GKE"
  project                     = "sb-izal-20240910-144605"
  sa_account_id               = "cluster-service-account"
  sa_display_name             = "cluster service account"
  container_cluster_name      = "rancher-cluster"
  container_node_pool_name    = "worker-pool"
  google_compute_network_name = "gke-vpc"
  deletion_protection         = true
}
