# module "gke" {
#   source = "github.com/StrikerASD/GKE"
#   sa_account_id = "jenkins-gke@sb-izal-20240703-111957.iam.gserviceaccount.com"
#   sa_display_name = "jenkins-gke"
#   container_cluster_name = "rancher-cluster"
#   container_node_pool_name = "worker-pool"
# }