class User < ActiveRecord::Base

has_secure_password 

has_many :beverages
has_many :votes


validates_presence_of :name
validates_presence_of :email
validates_uniqueness_of :email
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
