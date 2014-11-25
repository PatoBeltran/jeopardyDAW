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

class Answers < ActiveRecord::Base
  belongs_to :game
  belongs_to :game_member
  belongs_to :clue

  validate :game, :game_member, :clue, :points, presence: true
  validate :points, numericality: true
end
