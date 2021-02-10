locals {
  clients = {
  for client in var.clients : replace(lower(client.name), "/[^a-z0-9]/", "-") => {
    allowed_oauth_flows                  = lookup(client, "allowed_oauth_flows", null)
    allowed_oauth_flows_user_pool_client = lookup(client, "allowed_oauth_flows_user_pool_client", null)
    allowed_oauth_scopes                 = lookup(client, "allowed_oauth_scopes", null)
    callback_urls                        = lookup(client, "callback_urls", null)
    default_redirect_uri                 = lookup(client, "default_redirect_uri", null)
    explicit_auth_flows                  = lookup(client, "explicit_auth_flows", null)
    generate_secret                      = lookup(client, "generate_secret", null)
    logout_urls                          = lookup(client, "logout_urls", null)
    read_attributes                      = lookup(client, "read_attributes", null)
    refresh_token_validity               = lookup(client, "refresh_token_validity", 30)
    supported_identity_providers         = lookup(client, "supported_identity_providers", null)
    prevent_user_existence_errors        = lookup(client, "prevent_user_existence_errors", null)
    write_attributes                     = lookup(client, "write_attributes", null)
  }
  }
}

resource "aws_cognito_user_pool_client" "client" {
  for_each = local.clients

  name = each.key

  allowed_oauth_flows                  = each.value.allowed_oauth_flows
  allowed_oauth_flows_user_pool_client = each.value.allowed_oauth_flows_user_pool_client
  allowed_oauth_scopes                 = each.value.allowed_oauth_scopes
  callback_urls                        = each.value.callback_urls
  default_redirect_uri                 = each.value.default_redirect_uri
  explicit_auth_flows                  = each.value.explicit_auth_flows
  generate_secret                      = each.value.generate_secret
  logout_urls                          = each.value.logout_urls
  read_attributes                      = each.value.read_attributes
  refresh_token_validity               = each.value.refresh_token_validity
  supported_identity_providers         = each.value.supported_identity_providers
  prevent_user_existence_errors        = each.value.prevent_user_existence_errors
  user_pool_id                         = var.user_pool_id
  write_attributes                     = each.value.write_attributes
}
