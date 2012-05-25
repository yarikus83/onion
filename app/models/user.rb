class User < ActiveRecord::Base
  attr_accessible :email, :login, :password, :string
  has_many :notes
end
