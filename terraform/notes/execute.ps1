with help of this script you
# To use your IAM credentials to authenticate the Terraform AWS provider, set the AWS_ACCESS_KEY_ID environment variable.
set AWS_ACCESS_KEY_ID=dummy #windows
export AWS_ACCESS_KEY_ID=dummy #linux or mac

# set your secret key.
set AWS_SECRET_ACCESS_KEY=dummy #windows
export AWS_SECRET_ACCESS_KEY=dummy #linux or mac

cd "C:\Workspace\ioc\terraform"

# The set of files used to describe infrastructure in Terraform is known as a Terraform configuration. You will write your first configuration to define a single AWS EC2 instance.
# Craete hello directory for configuration
mkdir hello

# Change into the direcorty
cd .\hello

# Create a file to define your infrastructure
New-Item main.tf #windows 
touch main.tf # linux or mac

# Open main.tf using notepad
notepad.exe main.tf # windows
vi main.tf # linux or mac

# View the configuration in main.tf
cls # windows
clear #linux or mac
type .\main.tf # windows
cat .\main.tf # linux or mac

# Initializing a configuration directory downloads and installs the providers defined in the configuration, which in this case is the aws provider.
terraform init


# Initializing a configuration directory downloads and installs the providers defined in the configuration, which in this case is the aws provider.
# Format your configuration. Terraform will print out the names of the files it modified, if any. In this case, your configuration file was already formatted correctly, so Terraform won't return any file names.
terraform fmt

# You can also make sure your configuration is syntactically valid and internally consistent by using the terraform validate command.
terraform validate

# Create infrastructure
# Apply the configuration now with the terraform apply command
terraform apply


# Inspect state
# When you applied your configuration, Terraform wrote data into a file called terraform.tfstate. Terraform stores the IDs and properties of the resources it manages in this file, so that it can update or destroy those resources going forward.
terraform show

# Manually Managing State
# Terraform has a built-in command called terraform state for advanced state management. Use the list subcommand to list of the resources in your project's state.
terraform state list

# Troubleshooting
# If terraform validate was successful and your apply still failed, you may be encountering one of these common errors.
# If you use a region other than us-west-2, you will also need to change your ami, since AMI IDs are region-specific. Choose an AMI ID specific to your region by following these instructions, and modify main.tf with this ID. Then re-run terraform apply.
# If you do not have a default VPC in your AWS account in the correct region, navigate to the AWS VPC Dashboard in the web UI, create a new VPC in your region, and associate a subnet and security group to that VPC. Then add the security group ID (vpc_security_group_ids) and subnet ID (subnet_id) arguments to your aws_instance resource, and replace the values with the ones from your new security group and subnet.

#Refrence: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build
#https://developer.hashicorp.com/terraform/tutorials
