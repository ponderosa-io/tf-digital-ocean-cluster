CLUSTER_ID=$(terraform output cluster-id)
OUTFILE="config"
echo "getting cluster config for $CLUSTER_ID"
curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer ${TF_VAR_do_token}" "https://api.digitalocean.com/v2/kubernetes/clusters/$CLUSTER_ID/kubeconfig" > $OUTFILE
