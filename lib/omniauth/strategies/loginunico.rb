require 'omniauth-oauth2'

module Omniauth
  module Strategies
    class LoginUnico < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: 'https://sso.staging.acesso.gov.br',
        authorize_url: 'https://sso.staging.acesso.gov.br/authorize',
        token_url: 'https://sso.staging.acesso.gov.br/token'
      }

      option :pkce, true

      uid{ raw_info['id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'loginunico', 'LoginUnico'
