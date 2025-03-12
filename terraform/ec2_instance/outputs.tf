output "instance_public_ip" {
    description = "Adresse IP publique de l'instance"
    value = aws_instance.public_instance.public_ip
}

output "instance_id" {
    description = "ID de l'instance EC2"
    value = aws_instance.public_instance.id
}

output "public_ec2_sg_id" {
  description = "ID du groupe de sécurité pour les instances ec2 publiques"
  value = aws_security_group.public_ec2_sg.id
}


output "public_ec2_sg_name" {
  description = "Nom du groupe de sécurité pour les instances ec2 publiques"
  value = aws_security_group.public_ec2_sg.name
}