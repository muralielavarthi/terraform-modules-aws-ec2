# default
variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    # instead of hard coding ami id, we can fetch it using data source
}

# mandatory - leaving blank means, value is mandatory for this variable
variable "sg_id" {

}

# In project, we might use t3.micro or t3.small or t3.medium, we can restict from using other things than these values
# if some provides other instance_type it will throw an error.
variable "instance_type" {
    default = "t3.micro"
    validation {
        condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "Valid values for instance type are: t3.small t3.medium t3.micro"
    } 
}

# optional
variable "tags" {
    default = {}
}

# default = {}, means value is optional for this variable
