# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  login      :string(255)
#  password   :string(255)
#  string     :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :login, :password, :string
  has_many :notes
  
  validates_presence_of :login, :password 
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },           
  uniqueness: { case_sensitive: false }
end
