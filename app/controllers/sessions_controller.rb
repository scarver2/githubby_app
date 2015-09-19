# SessionsController
# Provides authentication functions
class SessionsController < ApplicationController
  def create
    user = FindUserByOauth.call(auth) || CreateUserFromOauth.call(auth)
    session[:user_id] = user.id
    redirect_to root_url, notice: I18n.t('logged_in')
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: I18n.t('logged_in')
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
