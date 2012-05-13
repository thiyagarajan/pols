class UsersController < ApplicationController

  before_filter :should_be_user, :only => [:myaccount, :profile]

  def show
  end

  def myaccount
    @user = current_user
    @profile = current_user.profile
  end

  def update
    @user = current_user
    @profile = current_user.profile
    if params[:redirect_from] == "myaccount"
      if @user.valid_password?(params[:password])
        @user.password = params[:new_password]
        @user.save(:validate => false)
        sign_in(@user, :bypass => true)
        redirect_to user_myaccount_path(@user), :notice => "Password Updated"
      else
        redirect_to user_myaccount_path(@user), :notice => "Old Password Not Match"
      end
    end
  end

  def profile
    @user = User.find(current_user.id)
  end
end
