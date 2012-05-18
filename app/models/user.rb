class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :invitable, :invite_for => 2.weeks

  has_one :profile
  accepts_nested_attributes_for :profile
  has_many :victories
  # Setup accessible (or protected) attributes for your model
  attr_accessor :password_confirmation
  attr_accessible :email, :password, :password_confirmation, :remember_me, :reset_password_token, :profile_attributes

  # attr_accessible :title, :body
end
