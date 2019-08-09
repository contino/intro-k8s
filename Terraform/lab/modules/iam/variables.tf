variable "project" {}

variable "user_accnt_permissions" {
  type = "list"
}

variable "svc_accnt_permissions" {
 type = "list"
}

variable "role_name" {
  default = "workshop_role_test"
}

variable "users" {}
