# README

This cluster contains Terraform config to create a Kubernetes cluster on Digital Ocean and a shell script that gets a kubeconfig for accessing that cluster.

You can run:

```
$ git clone <repo>
$ export TF_VAR_do_token=<your_do_token>
$ export TF_VAR_do_cluster_name=<your_cluster_name>
$ cd <repo> && terraform plan
$ terraform apply
$ ./get_config
$ export KUBECONFIG=$(pwd)/config
```

