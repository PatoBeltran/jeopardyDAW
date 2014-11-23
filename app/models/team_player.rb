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

class TeamPlayer < ActiveRecord::Base
  belongs_to :player
  belongs_to :team
end
