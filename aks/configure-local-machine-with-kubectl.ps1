$rgName = "RW-RG-DEV"
$AKS_CLUSTER_NAME = "RW-RG-DEV"

az aks get-credentials --resource-group $rgName --name $AKS_CLUSTER_NAME
