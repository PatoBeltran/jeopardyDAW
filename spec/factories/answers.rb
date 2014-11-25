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

FactoryGirl.define do
  factory :answer, :class => 'Answers' do
    game_id 1
game_member_id 1
clue_id 1
points 1
  end

end
