class SitesController < ApplicationController
  def help
    @help = Cms.find_by_id(2)
  end

  def aboutus
    @about = Cms.find_by_id(1)
  end
end