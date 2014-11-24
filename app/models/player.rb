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

  def has_team_on_game(game)
    game.members.select{|a| a.memberable_type == "Team" && a.memberable.players.include?(self)}.count > 0
  end

  def team_name_for_game(game)
    game.members.select{|a| a.memberable_type == "Team" && a.memberable.players.include?(self)}.first.memberable.name.split.join('')
  end

  include ActsAsGameMember
end
