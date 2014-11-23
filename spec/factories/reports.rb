# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :report do
    game_id 1
  end

end
