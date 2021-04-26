# Azure-Kubernetes-Service-Hands-on

In this Hands-on, we'll go through tasks to deploy a multicontainer application to Kubernetes on Azure Kubernetes Service (AKS).

## Application architecture

Our goal is to deploy an Azure managed Kubernetes service, Azure Kubernetes Service (AKS), that runs the Fruit Smoothies ratings website. Below is the application Architecture and Azure service we are going to use. 

![image](https://docs.microsoft.com/en-us/learn/modules/aks-workshop/media/02-arch.svg)

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
- Deploy the Fruit Smoothies website document database using Helm 3.
- Deploy the Fruit smoothies RESTFul API using deployment manifests.
- Deploy the Fruit smoothies website frontend using deployment manifests.
- Deploy Azure Kubernetes ingress using Helm 3.
- Configure SSL/TLS on the controller using cert-manager.
- Configure Azure Monitor for containers to monitor the Fruit Smoothies website deployment.
- Configure cluster autoscaler and horizontal pod autoscaler for the Fruit Smoothies cluster.

