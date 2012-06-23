class HomeController < ApplicationController
  def index
    @victory = Victory.all
    @victory = Victory.paginate(:page => params[:page], :per_page => 10)
    @user = current_user
    myvictory(@user)
    puts "===================="
    puts @myvictory.inspect
    puts "===================="
  end

  def myvictory(user)
    @myvictory = Victory.all
  end

end
