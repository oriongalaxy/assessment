## Terraform Infrastructure Deployment 

# Prerequisites 
* AWS Acccount
* Git 
* Terraform 
## How to use 

* Create a .tfvars file and pass values into variables. Reference the variables.tf file  
* Default values have been set for all values but they can be changed in the variables.tf file
* Run Terraform init and terraform apply. 
* Module used for creating vpc and subnet is specified in the main.tf. Module input and output can be reviewed on the terraform registry and values passed accordingly.  
## Authentication for permissions
The following are options for providing permissions to the aws.

**Utilize IAM Roles**
* Create IAM Role With Required Policies.
* * VPCFullAccess
* * EC2FullAcces
* * S3FullAccess ..etc
* Attach IAM Role to EC2 Instance.

**Utilize AWS Vault** 
 ```
 #Guideline shown
 https://github.com/99designs/aws-vault/
```
**Utilize AWS configure**
```
Aws configure
Enter Access Key Id: %%%
Enter Secret Key: %%% 
```

## Get configuration files from REPO
Utilize the command below to clone the repo
 ```
 git clone "https://github.com/oriongalaxy/assessment" 
 ```


## Infrastructure As A Code
Create Infrastructure(VPC,Subnets,Route Tables,) As A Code Using Terraform Scripts
A terraform registry module was utilized in deploying vpc, subnets , NAT gateway and route tables
```
Switch into the directory or utilize abosolute path 
# Initialise to install plugins/modules
$ terraform init 
# Validate teffaform scripts
$ terraform validate 
# Plan terraform scripts which will list resources which is going  be created.
$ terraform plan 
# Apply to create resources
$ terraform apply --auto-approve 
````
## Destroy Infrastructure
$ terraform destroy --auto-approve 

