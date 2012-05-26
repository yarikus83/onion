# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  login           :string(255)
#  password        :string(255)
#  string          :string(255)
#  email           :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :login, :password, :string
  has_many :notes
  before_save { |user| user.email = email.downcase }
  validates_presence_of :login, :password_digest 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },           
  uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
