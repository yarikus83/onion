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

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
