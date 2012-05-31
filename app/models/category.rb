class Category < ActiveRecord::Base
  acts_as_nested_set
  attr_accessible :name, :parent_id#, :lft, :rgt
  # attr_accessible :title, :body
  has_many :victories
  def path_name
    "#{'-' * self.level} #{self.name}"
  end
end
