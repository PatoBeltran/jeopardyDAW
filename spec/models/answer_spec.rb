# == Schema Information
#
# Table name: answers
#
#  id             :integer          not null, primary key
#  game_id        :integer
#  game_member_id :integer
#  clue_id        :integer
#  points         :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'rails_helper'

RSpec.describe Answer, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
