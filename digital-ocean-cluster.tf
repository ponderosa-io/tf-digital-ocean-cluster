variable do_token {}
variable do_cluster_name {}

# Get a Digital Ocean token from your Digital Ocean account
#   See: https://www.digitalocean.com/docs/api/create-personal-access-token/
# Set TF_VAR_do_token to use your Digital Ocean token automatically
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_kubernetes_cluster" "my_digital_ocean_cluster" {
  name    = var.do_cluster_name
  region  = "nyc1"
  version = "1.13.1-do.2"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}

output "cluster-id" {
  value = digitalocean_kubernetes_cluster.my_digital_ocean_cluster.id
}
