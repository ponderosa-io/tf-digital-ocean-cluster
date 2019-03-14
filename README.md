# README

This cluster contains Terraform config to create a Kubernetes cluster on Digital Ocean and a shell script that gets a kubeconfig for accessing that cluster.

It assumes you have a Digital Ocean token ([here's how to get one](https://www.digitalocean.com/docs/api/create-personal-access-token/)).

## How to run

```
$ git clone git@github.com:ponderosa-io/tf-digital-ocean-cluster.git
$ export TF_VAR_do_token=<your_digital_ocean_token>
$ export TF_VAR_do_cluster_name=<your_cluster_name>
$ cd tf-digital-ocean-cluster
$ terraform plan
$ terraform apply
$ ./get_config
$ export KUBECONFIG=$(pwd)/config
```

