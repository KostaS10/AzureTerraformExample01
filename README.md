# AzureTerraformExample01

Instructions:

Log into shell at https://shell.azure.com
Download all files locally from https://github.com/KostaS10/AzureTerraformExample01
Upload all of those files through Azure Shell to the root directory
Upload separately provided variables.tf files
In variables.tf insert desired variables, definitely subscriptionID and admin_password for the VM, because those ones do not have defaults.
In Azure Shell, run "terraform init" to initialize provider
In Azure Shell, run "terraform plan" to let terraform build deployment plan
In Azure Shell, run "terraform apply --auto-approve" to start building desired infrastructure
After deployment is completed, verify that there is Resource Group in place with all the infrastructure
