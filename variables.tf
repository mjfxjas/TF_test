variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance."
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "instance_type" {
  description = "The EC2 instance's type."
  type        = string
  default     = "t2.micro"
}