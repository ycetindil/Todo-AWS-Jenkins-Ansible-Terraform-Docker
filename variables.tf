variable "ami" {
  default = "ami-0f095f89ae15be883"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "nvirginia"
}

variable "tags" {
  default = ["postgresql", "nodejs", "react"]
}

variable "jenkins_project_sg" {
  default = "jenkins-project-sg"
}