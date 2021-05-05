# Azure-Kubernetes-Service-Hands-on

In this Hands-on, we'll go through tasks to deploy a multicontainer application to Kubernetes on Azure Kubernetes Service (AKS).

## Application architecture

Our goal is to deploy an Azure managed Kubernetes service, Azure Kubernetes Service (AKS), that runs the Fruit Smoothies ratings website. Below is the application Architecture and Azure service we are going to use. 

![image](https://docs.microsoft.com/en-us/learn/modules/aks-workshop/media/02-arch.svg)

## Network Architecture

![image](https://user-images.githubusercontent.com/1097968/116126231-107cfd80-a6cf-11eb-9d63-9a707024841a.png)


## Learning objectives

- Create Required Infrastructure Application
- Create an Azure Kubernetes Service cluster
- Choose the best deployment options for your Pods
- Expose Pods to internal and external network users
- Configure SSL/TLS for Azure Kubernetes Service ingress
- Monitor the health of an Azure Kubernetes Service cluster
- Scale your application in an Azure Kubernetes Service cluster

## Tasks

- Create Resource Group 
- Create Network Architecture
  - Deploy Vnet
  - Create Front End Subnet
  - Create App Subnet
  - Create Backend Subnet
  - Create FE NSG
  - Create APP NSG
  - Create BE NSG
- Use AKS to deploy a Kubernetes cluster.
- Configure an Azure Container Registry to store application container images.
- Deploy the three ratings application components.
  - Rating REST API - git clone https://github.com/MicrosoftDocs/mslearn-aks-workshop-ratings-api.git
  - Rating Web Site - git clone https://github.com/MicrosoftDocs/mslearn-aks-workshop-ratings-web.git
  - Build Container Image & pushes the resulting image to the container registry
    - az acr build --resource-group $RESOURCE_GROUP --registry $ACR_NAME --image ratings-api:v1 .
  - Verify the Image
    - az acr repository list --name $ACR_NAME --output table
  - Configure the AKS cluster to authenticate to the container registry
    - az aks update --name $AKS_CLUSTER_NAME --resource-group $RESOURCE_GROUP --attach-acr $ACR_NAME
- Deploy the Fruit Smoothies website document database using Helm 3.
- Deploy the Fruit smoothies RESTFul API using deployment manifests.
- Deploy the Fruit smoothies website frontend using deployment manifests.
- Deploy Azure Kubernetes ingress using Helm 3.
- Configure SSL/TLS on the controller using cert-manager.
- Configure Azure Monitor for containers to monitor the Fruit Smoothies website deployment.
- Configure cluster autoscaler and horizontal pod autoscaler for the Fruit Smoothies cluster.

### Deploy AKS with Advance Networking

Prior to deploying AKS using this ARM template, the following resources need to exist:

- Azure Vnet, including a subnet of sufficient size
- Service Principal

The following Azure CLI command can be used to create a Service Principal:

NOTE: The Service Principal Client Id is the Same as the App Id

`
az ad sp create-for-rbac -n "spn_name" --skip-assignment
`

`
az ad sp show --id <The AppId from the create-for-rbac command> --query objectId
`

Please note that using the 'create-for-rbac' function would assign the SPN the 'Contributor' role on subscription level, which may not be appropriate from a security standpoint.

