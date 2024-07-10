module "gke" {
  source                   = "github.com/StrikerASD/GKE"
  project                  = "sb-izal-20240703-111957"
  sa_account_id            = "cluster-service-accoount"
  sa_display_name          = "cluster service account"
  container_cluster_name   = "rancher-cluster"
  container_node_pool_name = "worker-pool"
}