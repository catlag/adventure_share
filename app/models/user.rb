class User < ActiveRecord::Base
	acts_as_messageable
	has_secure_password
  validates :username,
    presence: true,
    uniqueness: true

  has_many :user_trips
	has_many :trips, through: :user_trips

	def name
  return :username
	end

	def mailboxer_email(object)
  #Check if an email should be sent for that object
  #if true
  return :email
  #if false
  #return nil
	end

end
