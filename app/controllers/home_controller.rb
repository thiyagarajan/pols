class HomeController < ApplicationController
  def index
    @victory = Victory.all
  end
end
