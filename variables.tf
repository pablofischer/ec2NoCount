variable "region" {
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "instance_ami" {
  type = string
  default = "ami-007855ac798b5175e" 
}

variable "subnet_ids" {
  type = list(string)
  default = ["subnet-07d2eb535ddce3d80", "subnet-0fe42437a8111b019"] 
}

variable "instance_volumes" {
  type = map(object({
    size = number
  }))
  default = {
    "1" = {
      size = 20
    },
    "2" = {
      size = 21
    }
  }
}
