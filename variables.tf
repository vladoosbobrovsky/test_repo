# core

variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-east-2"
}


# networking

variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.1.0/24"
}
variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
  default     = "10.0.2.0/24"
}
variable "private_subnet_1_cidr" {
  description = "CIDR Block for Private Subnet 1"
  default     = "10.0.3.0/24"
}
variable "private_subnet_2_cidr" {
  description = "CIDR Block for Private Subnet 2"
  default     = "10.0.4.0/24"
}
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}


# load balancer

variable "health_check_path" {
  description = "Health check path for the default target group"
  default     = "/"
}


# ecs

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  default     = "production"
}
variable "amis" {
  description = "Which AMI to spawn."
  default = {
    us-east-2 = "ami-0796cd0624bdafd23"
  }
}
variable "instance_type" {
  default = "t2.medium"
}
variable "docker_image_url_tomcat" {
  description = "Docker image to run in the ECS cluster"
  default     = "331819426341.dkr.ecr.us-east-2.amazonaws.com/petclinic:latest"
}


variable "app_count" {
  description = "Number of Docker containers to run"
  default     = 2
}
variable "allowed_hosts" {
  description = "Domain name for allowed hosts"
  default     = "YOUR DOMAIN NAME"
}


# logs

variable "log_retention_in_days" {
  default = 30
}


# key pair

variable "ssh_pubkey_file" {
  description = "Path to an SSH public key"
  default     = "~/Downloads/vladdev.pub"
}


# auto scaling

variable "autoscale_min" {
  description = "Minimum autoscale (number of EC2)"
  default     = "1"
}
variable "autoscale_max" {
  description = "Maximum autoscale (number of EC2)"
  default     = "2"
}
variable "autoscale_desired" {
  description = "Desired autoscale (number of EC2)"
  default     = "2"
}
