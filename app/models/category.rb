class Category < ActiveRecord::Base
  attr_accessible :notes, :title 
  has_many :notes
end
