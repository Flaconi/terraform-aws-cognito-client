variable "user_pool_id" {
  type        = string
  description = "(Required) The Id of the user pool where the resource server is applied for."
}


variable "clients" {
  description = "(Optional) A list of objects with the clients definitions."
  type        = any

  # A list of clients that follow the normal schema defined by the provider.
  # For details please see https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html
  #
  default = []
}
