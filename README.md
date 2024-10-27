## Setup Github

### Branches

Make sure the following branches is created

- main
- develop

### Rule set

Create a Rule set for your branches. Use the following settings:

- Enforcement statis = Active
- Target branches:
  - main
  - develop
- Rules
  - Restrict deletions
  - Require a pull request before merging
  - Require status checks to pass
    - Status checks that are required
      - validate (Github Actions)
  - Block force pushes

### Secrets

Create the following Github Actions secrets:

| Name                      | Value                                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| **AZURE_CLIENT_ID**       | Azure Portal --> Microsoft Entra ID --> App registrations<br>--> Your app --> Overview --> Application (client) ID |
| **AZURE_CLIENT_SECRET**   | Secret from the app creation                                                                                       |
| **AZURE_SUBSCRIPTION_ID** | Azure portal --> Subscriptions                                                                                     |
| **AZURE_TENANT_ID**       | Azure Portal --> Microsoft Entra ID --> App registrations<br>--> Your app --> Overview --> Directory (tenant) ID   |

### Environment

Create environment "production". Select "Required reviewers" and add the user account that is allowed to review the deployment.

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
