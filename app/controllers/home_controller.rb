class HomeController < ApplicationController
  def index
    @victory = Victory.all
    @victory = Victory.paginate(:page => params[:page], :per_page => 10)
  end
end
