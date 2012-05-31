class HomeController < ApplicationController
  def index
    @victory = Victory.all
    @victory = Victory.paginate(:page => params[:page], :per_page => 10)
  end

  def myvivtory
    @myvictory = Victory.find_by_user_id(current_user.id)
    puts @myvictory.inspect
  end

end
