module "gke" {
  source = "github.com/StrikerASD/GKE"
  sa_account_id = "103483743575851319174"
  sa_display_name = "jenkins-cluster"
  container_cluster_name = "rancher-cluster"
  container_node_pool_name = "worker-pool"
}