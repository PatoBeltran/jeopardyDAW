# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Player < ActiveRecord::Base
  has_many :team_players
  has_many :teams, through: :team_players

  validate :name, presence: true
  
  include ActsAsGameMember
end
