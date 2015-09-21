# SessionsController
# Provides authentication functions
class SessionsController < ApplicationController
  def create
    # binding.pry
    user = FindUserByOauth.call(auth_hash) || CreateUserFromOauth.call(auth_hash)
    session[:user_id] = user.id
    redirect_to root_url # , notice: I18n.t('logged_in')
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: I18n.t('logged_out')
  end

  def failure
    redirect_to root_url, alert: I18n.t('authentication_failure')
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
