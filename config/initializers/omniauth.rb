 require 'omniauth-google-oauth2'
require 'omniauth-azure-oauth2'
Rails.application.config.middleware.use OmniAuth::Builder do
  config = Kuroko2.config.app_authentication.google_oauth2
  provider :google_oauth2, config.client_id, config.client_secret, config.options.to_h.symbolize_keys
  provider :azure_oauth2, Kuroko2.config.app_authentication.azure_oauth2
end
