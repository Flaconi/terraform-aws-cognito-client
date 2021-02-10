output "clients" {
  description = "All Cognito User Pool Client resources associated with the Cognito User Pool."
  value       = { for client in aws_cognito_user_pool_client.client : client.name => merge(client, { client_secret = null }) }
}

output "client_secrets" {
  description = "The secrets of all created Cognito User Pool Client resources."
  value       = { for client in aws_cognito_user_pool_client.client : client.name => client.client_secret }
  sensitive   = true
}
