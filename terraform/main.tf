module "gke" {
  source = "github.com/StrikerASD/GKE"
  container_cluster_name = "rancher-cluster"
  container_node_pool_name = "worker-pool"
}