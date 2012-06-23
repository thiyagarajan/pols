class HomeController < ApplicationController
  def index
    @victory = Victory.all
    @victory = Victory.paginate(:page => params[:page], :per_page => 10)
    if user_signed_in?
      user = current_user.id
      myvictory(user)
      puts "===================="
      puts @myvictory.inspect
      puts "===================="
    end
  end

  def myvictory(user)
    @myvictory = Victory.find(:all, :conditions => ["user_id=#{user}"])
  end

end
