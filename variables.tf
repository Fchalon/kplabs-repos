variable "instancetype" {
  type    = string
  default = "t2.micro"
}

variable "git-repo" {
  type    = list(any)
  default = ["git-repo-dev", "git-repo-ppd", "git-repo-prod"]
}

variable "gittocken" {
  type = string
  default =""
}

