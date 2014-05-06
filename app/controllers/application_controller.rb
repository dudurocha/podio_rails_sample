class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :ensure_login

  protected

    def ensure_login
      if session[:podio_access_token]
        init_podio_client
      else
        redirect_to new_session_path
      end
    end

    def init_podio_client
      Podio.setup(
        :api_url => 'https://api.podio.com',
        :api_key => 'criatec2-wcd6fn', #
        :api_secret => 'L88GXQWRoXqs5d7pu7xtxPHuYWevhKzAf6QvBdVKXhelCbR6XkOpuAZwVDzCURL2', #
        :oauth_token => Podio::OAuthToken.new('access_token' => session[:podio_access_token], 'refresh_token' => session[:podio_refresh_token])
      )
    end
end
