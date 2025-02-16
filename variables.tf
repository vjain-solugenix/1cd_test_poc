variable "region" {
  type = string
  #default = "ap-south-1"
  description = <<EOF
    Enter the AWS region where you want to deploy yht infrastucture. Example: 'us-east-1', 'eu-west-1', etc.
    
    Check the below link for complete list of available AWS regions: 
    
    https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html#Concepts.RegionsAndAvailabilityZones.Regions
    EOF
}

variable "global_project_tag" {
  type        = string
  description = "Mandatory field. Provide the name of project. This value will be used as a tag ('project=<name>') to all AWS resources."
}

variable "global_creator_tag" {
  type = string
  description = "Optional. The default value for tag 'CreatedBy' is 'TF'.)  "
  default = "TF"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR value for AWS Virtual Private Cloud. Default value is 10.0.0.0/16."
}

variable "numb_priv_sub" {
  type        = number
  description = "Number of required Private Subnet. Default value is 2 and CIDR range is /24."
  default     = 2
}

variable "numb_pubs_sub" {
  type        = number
  description = "Number of required Public Subnet. Default value is 2 and CIDR range is /24."
  default     = 2
}
