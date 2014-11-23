# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base
  has_many :team_players
  has_many :players, through: :team_players
  belongs_to :game
  include ActsAsGameMember
end
