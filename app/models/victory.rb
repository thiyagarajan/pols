class Victory < ActiveRecord::Base
  acts_as_commentable
  acts_as_taggable_on :tags
  # attr_accessible :title, :body
  has_many :comments, :foreign_key => :commentable_id
  belongs_to :user
  attr_accessible :user_id, :title, :problem, :solution
end
