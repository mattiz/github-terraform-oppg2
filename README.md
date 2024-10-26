## Setup Github

Create the following Github Actions secrets:

```shell
AZURE_CLIENT_ID = Azure Portal --> Microsoft Entra ID --> App registrations --> Your app --> Overview --> Application (client) ID
AZURE_CLIENT_SECRET = Secret from the app creation
AZURE_SUBSCRIPTION_ID = Azure portal --> Subscriptions
AZURE_TENANT_ID = Azure Portal --> Microsoft Entra ID --> App registrations --> Your app --> Overview --> Directory (tenant) ID
```

## Initialize backend

```shell
cd terraform/backend
terraform init
terraform plan --out=main.tfplan
terraform apply main.tfplan
terraform output -raw backend_config > ../infrastructure/backend.tf
terraform output -raw storage_account_access_key
```

## Infrastructure
```shell
terraform workspace new dev
terraform workspace new staging
terraform workspace new prod
terraform workspace select dev

terraform init -backend-config=backend.conf
```

## Out if scope

The following was not included in answer since it's out of scope for the assignment:

- The Azure resoruces is not connected to the virtual network
- No web apps (e.g. azurerm_linux_web_app) was connected to the service plan
- The load balancer is not set up to distribute traffic to backend pools
