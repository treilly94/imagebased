## Salt (Config)
Salt is used to configure the vms/images

## Vagrant (Local)
Vagrant is used for local testing
To run locally run the below command in The vagrant directory
`vagrant up`

## Packer (Cloud Images)
Packer is used to build a image to deploy onto a cloud provider
To build the image run the below command in the packer directory
`packer build -var-file=variables.json base.json`

## Terraform (Cloud Infastructure)
Terraform is used to create the cloud infrastructure
Run the below command in the terraform directory
`terraform apply -var-file=main.tfvars`
