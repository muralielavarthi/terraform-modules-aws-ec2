output "public_ip" {
    value = aws_instance.this.public_ip
}

output "private_ip" {
    value = aws_instance.this.private_ip
}

# if we don't write output's in module, we can't fetch these values from project
# it is important to write outputs