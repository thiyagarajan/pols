class ApplicationController < ActionController::Base
  protect_from_forgery

  def should_be_user
    redirect_to new_user_session_path, :notice => "You need to sign in or sign up before continuing." unless user_signed_in?
  end

end
