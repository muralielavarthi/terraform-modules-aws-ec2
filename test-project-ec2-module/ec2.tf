module "ec2" {
    source = "../terraform-aws-ec2"
    sg_id = "sg-0e978039cdb6c3057" # this one we are passing to module
    instance_type = "t3.small" # this one we are passing to module
}

output "public_ip" {
   value =  module.ec2.public_ip
}

# "../terraform-aws-ec2" -- one step back, because ec2 module is in root folder.

# Even if we have default value for variable, the value passed in ec2 will override default value.
# instance_type = "t3.small"