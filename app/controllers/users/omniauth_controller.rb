class Users::OmniauthController < ApplicationController
  def google_oauth2
    @user = User.find_for_google(request.env["omniauth.auth"])
    
    if @user.persisted?
      flash[:notice] = "ログイン成功！！ぬまの"
      sign_in_and_redirect @user, events: :authenticattion
    end
  end
end
