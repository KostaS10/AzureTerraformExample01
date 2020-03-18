# AzureTerraformExample01

Instructions: 

Log into shell at https://shell.azure.com <br/>
Download all files locally from https://github.com/KostaS10/AzureTerraformExample01 <br/>
Upload all of those files through Azure Shell to the root directory <br/>
Upload separately provided variables.tf files <br/>
In variables.tf insert desired variables, definitely subscriptionID and admin_password for the VM, because those ones do not have defaults. <br/>
In Azure Shell, run "terraform init" to initialize provider <br/>
In Azure Shell, run "terraform plan" to let terraform build deployment plan <br/>
In Azure Shell, run "terraform apply --auto-approve" to start building desired infrastructure <br/>
After deployment is completed, verify that there is Resource Group in place with all the infrastructure <br/>
