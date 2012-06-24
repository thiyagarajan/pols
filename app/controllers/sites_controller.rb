class SitesController < ApplicationController
  def help
  end

  def aboutus
    @about = Cms.find_by_id(1)
  end
end