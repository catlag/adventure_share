class User < ActiveRecord::Base
	acts_as_messageable
	has_secure_password
  validates :username,
    presence: true,
    uniqueness: true

  has_many :user_trips
	has_many :trips, through: :user_trips


end
