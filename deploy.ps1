
$rgName = "RW-RG-DEV"
$tags = @{"NAME"="RatingWebsite"; "ENVIRONMENT"="DEVELOPMENT";}
$subscription = "xxxxxxxxxxxxx"

set-azcontext $subscription

New-AzResourceGroupDeployment -Name rw-vnet-dp -ResourceGroupName $rgName -TemplateFile "rw-vnet.json" -TemplateParameterFile "rw-vnet.parameters.json" -Tag $tags
