variable "enable_kubeconfig" {
  default     = true
  description = "Set to false to skip local kubeconfig update"
}

variable "region" {
  default = "us-east-1"
}

# core VPC paramters 
variable "vpc_cidr" {
  default = "10.100.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "CIDR blocks for all subnets by name"
  type = object({
    private_zone1 = string
    private_zone2 = string
    public_zone1  = string
    public_zone2  = string
  })
  default = {
    private_zone1 = "10.100.0.0/19"
    private_zone2 = "10.100.32.0/19"
    public_zone1  = "10.100.64.0/19"
    public_zone2  = "10.100.96.0/19"
  }
}

locals {
  zone1 = "${var.region}a"
  zone2 = "${var.region}b"
}

variable "cluster_name" {
  default     = "demo"
  type        = string
  description = "AWS EKS CLuster Name"
  nullable    = false
}