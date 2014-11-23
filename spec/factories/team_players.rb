# == Schema Information
#
# Table name: team_players
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  player_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :team_player do
    team_id 1
player_id 1
  end

end
