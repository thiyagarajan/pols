class Profile < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  attr_accessible :user_id, :first_name, :last_name, :address1, :address2, :city, :state, :zip, :phone, :website, :avatar

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "150x150>", :small =>"50x50" }

  def self.profile_create(id)
    return Profile.find_or_create_by_user_id(:user_id => id).id
  end

end