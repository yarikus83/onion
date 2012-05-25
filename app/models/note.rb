# == Schema Information
#
# Table name: notes
#
#  id          :integer         not null, primary key
#  header      :string(255)
#  body        :text
#  category_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Note < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  attr_accessible :body, :header, :category_id
  validates_presence_of :category_id, :header
end


