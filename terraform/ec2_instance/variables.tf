variable "instance_type" {

    description = "type d'instance EC2"
    type = string
    default = "t2.micro"

}

variable "ami_id" {
    description = "ID de l'image AMI"
    type = string
    default = "ami-0eaf62527f5bb8940"
}

variable "public_ec2_sg_name" {
    description = "Nom du groupe de securite de l'instance publique ec2"
    type = string
    default = "webserver-sg"
}

variable "public_subnet_id" {
    description = "ID de sous reseau publique"
    type = string
    default = "subnet-0aecbe8139c8ddbac"
}