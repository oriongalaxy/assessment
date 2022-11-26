## Terraform Infrastructure Deployment 

# Prerequisites 
* AWS Acccount
* Git 
* Terraform 

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
 git clone "" 
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
