class Contact < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :name, :email, :subject, :body

  validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => {:with => %r{.+@.+\..+}}, :allow_blank => true


end
