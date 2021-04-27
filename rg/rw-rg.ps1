# Variables for common values

# Development
$location = "West Europe"
$SubscriptionName = "xxxxxxxxxxxxxxxxx"
$rgName = "RW-RG-DEV"

#Create or check for existing resource group
$resourceGroup = Get-AzResourceGroup -Name $rgName -ErrorAction SilentlyContinue
if(!$resourceGroup){
	Write-Host "Creating $rgName Resouce Group"

	# Set Subscription Context for RG 
	Set-AzContext -SubscriptionName $SubscriptionName

	New-AzResourceGroup -Name $rgName `
	  -Location $location `
	  -Verbose `
	  -Tag @{"NAME"="RatingWebsite";`
		 "ENVIRONMENT"="DEVELOPMENT";`
	}
}
else{
    Write-Host "Resource group $rgName already exist";
}
