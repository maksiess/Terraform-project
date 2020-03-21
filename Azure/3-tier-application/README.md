# Install azure CLI

##Prerequisites 
Install on CentOS 

Terraform 0.11.15 

##Install AZ Cli on CentOS 
```
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc 
```

Copy paste below 
``` 
sudo sh -c 'echo -e "[azure-cli] 
name=Azure CLI 
baseurl=https://packages.microsoft.com/yumrepos/azure-cli 
enabled=1 
gpgcheck=1 
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo' 
```
``` 
sudo yum install azure-cli -y 
```

## Setup AZ 

```
az login 
az account list 
az account set --subscription="subscription id" 
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/subscription id" 
az login --service-principal -u     CLIENT_ID  -p CLIENT_SECRET --tenant TENANT_ID 
```

https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_secret.html 
Sets up for us.  

 
```
az account list-locations 
#Shows all the regions within Azure 
az vm list-sizes --location westus 
p 
cat ~/.azure/azureProfile.json 
```