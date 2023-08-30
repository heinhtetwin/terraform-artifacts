variable "webservers" {
  type        = set(string)
  description = "Name of webservers"
  default     = ["web-server1", "web-server2", "web-server3"]
}

variable "image_id" {
  type    = string
  default = "ami-0df7a207adb9748c7"
  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}