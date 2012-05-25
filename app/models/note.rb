class Note < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  attr_accessible :body, :header, :category_id
  validates_presence_of :category_id, :header
end


