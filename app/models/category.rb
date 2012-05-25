# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  notes      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Category < ActiveRecord::Base
  attr_accessible :notes, :title 
  has_many :notes
end
